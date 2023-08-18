/*
  Warnings:

  - You are about to drop the column `email` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `isAdmin` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `preferences` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `Category` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Post` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `UserPreference` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_CategoryToPost` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_authorID_fkey";

-- DropForeignKey
ALTER TABLE "Post" DROP CONSTRAINT "Post_favoriteByID_fkey";

-- DropForeignKey
ALTER TABLE "UserPreference" DROP CONSTRAINT "UserPreference_userId_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPost" DROP CONSTRAINT "_CategoryToPost_A_fkey";

-- DropForeignKey
ALTER TABLE "_CategoryToPost" DROP CONSTRAINT "_CategoryToPost_B_fkey";

-- DropIndex
DROP INDEX "User_age_name_key";

-- DropIndex
DROP INDEX "User_email_idx";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "email",
DROP COLUMN "isAdmin",
DROP COLUMN "preferences";

-- DropTable
DROP TABLE "Category";

-- DropTable
DROP TABLE "Post";

-- DropTable
DROP TABLE "UserPreference";

-- DropTable
DROP TABLE "_CategoryToPost";
