const bcrypt = require('bcrypt');
const prisma = require('../config/prisma');

const crearUsuario = async ({ nombre, email, password, role }) => {
    const existe = await prisma.usuario.findUnique({ where: { email }});
    if (existe) throw new Error('El Email ya esta registrado');

    const hashedPassword = await bcrypt.hash(password, 10);

    const usuario = await prisma.usuario.create({
        data: {
            nombre,
            email,
            password: hashedPassword,
            role
        },
    });

    return usuario;

};

module.exports = {
    crearUsuario,
};

