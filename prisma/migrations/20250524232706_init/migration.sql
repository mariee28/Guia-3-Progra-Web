/*
  Warnings:

  - You are about to drop the column `creadoEn` on the `role` table. All the data in the column will be lost.
  - You are about to drop the column `roleId` on the `usuario` table. All the data in the column will be lost.

*/
-- DropForeignKey
ALTER TABLE `usuario` DROP FOREIGN KEY `Usuario_roleId_fkey`;

-- DropIndex
DROP INDEX `Usuario_roleId_fkey` ON `usuario`;

-- AlterTable
ALTER TABLE `role` DROP COLUMN `creadoEn`;

-- AlterTable
ALTER TABLE `usuario` DROP COLUMN `roleId`;
