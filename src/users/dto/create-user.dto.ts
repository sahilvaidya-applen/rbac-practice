import { Role } from '@prisma/client';
import { IsEmail, IsEnum, IsOptional, IsString, Length } from 'class-validator';

export class CreateAuthDto {
  @IsString()
  @Length(2, 50)
  firstName!: string;

  @IsOptional()
  @IsString()
  @Length(2, 50)
  lastName!: string;

  @IsEmail()
  email!: string;

  @IsOptional()
  @IsOptional()
  @Length(10, 20)
  mobile?: string;

  @IsEnum(Role)
  role!: Role;
}
