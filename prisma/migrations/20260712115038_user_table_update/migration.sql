/*
  Warnings:

  - You are about to drop the column `statuss` on the `users` table. All the data in the column will be lost.
  - A unique constraint covering the columns `[invitationToken]` on the table `users` will be added. If there are existing duplicate values, this will fail.

*/
-- AlterTable
ALTER TABLE "users" DROP COLUMN "statuss",
ADD COLUMN     "status" "UserStatus" NOT NULL DEFAULT 'INVITED';

-- CreateIndex
CREATE UNIQUE INDEX "users_invitationToken_key" ON "users"("invitationToken");
