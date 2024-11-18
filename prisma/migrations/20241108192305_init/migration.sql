-- CreateTable
CREATE TABLE `acesso_acao` (
    `id_acao` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `nome_acao` VARCHAR(30) NULL,
    `ind_ativo` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,
    `ind_acao_geral` CHAR(1) NULL,
    `id_acao_tipo` INTEGER NULL,
    `descricao_acao` VARCHAR(200) NULL,
    `nome_componente` VARCHAR(100) NULL,

    PRIMARY KEY (`id_acao`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_acao_tela` (
    `id_acao_tela` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` VARCHAR(32) NULL,
    `id_acao` INTEGER NULL,
    `id_tela` INTEGER NULL,
    `user_inclusao` INTEGER NULL,
    `data_inclusao` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` INTEGER NULL,
    `data_alteracao` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
    `descricao_acao` VARCHAR(200) NULL,

    PRIMARY KEY (`id_acao_tela`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_acao_tela_perfil` (
    `id_acao_perfil` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` VARCHAR(32) NULL,
    `id_acao_tela` INTEGER NULL,
    `id_perfil` INTEGER NULL,
    `user_inclusao` INTEGER NULL,
    `data_inclusao` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` INTEGER NULL,
    `data_alteracao` TIMESTAMP(6) NULL DEFAULT CURRENT_TIMESTAMP(6),

    PRIMARY KEY (`id_acao_perfil`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_acao_tipo_componente` (
    `id_acao_tipo` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` VARCHAR(32) NULL,
    `nome_tipo` VARCHAR(100) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` DECIMAL NOT NULL,

    PRIMARY KEY (`id_acao_tipo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_menu` (
    `id_menu` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `id_menu_pai` INTEGER NULL,
    `id_tela` INTEGER NULL,
    `nome_menu` VARCHAR(30) NULL,
    `ind_ativo` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,
    `rota_menu` VARCHAR(35) NULL,
    `icone_menu` VARCHAR(50) NULL,

    PRIMARY KEY (`id_menu`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_modulo` (
    `id_modulo` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `nome_modulo` VARCHAR(25) NULL,
    `ind_ativo` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,

    PRIMARY KEY (`id_modulo`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_perfil` (
    `id_perfil` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `nome_perfil` VARCHAR(30) NULL,
    `ind_ativo` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` INTEGER NOT NULL,

    PRIMARY KEY (`id_perfil`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_usuario_perfil` (
    `id_usuario_perfil` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `id_usuario` INTEGER NULL,
    `id_perfil` INTEGER NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,

    PRIMARY KEY (`id_usuario_perfil`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_perfil_acao` (
    `id_perfil_acao` INTEGER NOT NULL AUTO_INCREMENT,
    `id_acao` INTEGER NULL,
    `id_perfil` INTEGER NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` INTEGER NOT NULL,

    PRIMARY KEY (`id_perfil_acao`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_perfil_tela` (
    `id_perfil_tela` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `id_perfil` INTEGER NULL,
    `id_tela` INTEGER NULL,
    `acesso_visual` CHAR(1) NULL,
    `acesso_edicao` CHAR(1) NULL,
    `acesso_criacao` CHAR(1) NULL,
    `acesso_exclusao` CHAR(1) NULL,
    `acesso_impressao` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,

    UNIQUE INDEX `acesso_perfil_tela_id_perfil_id_tela_idx`(`id_perfil`, `id_tela`),
    PRIMARY KEY (`id_perfil_tela`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_tela` (
    `id_tela` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `id_modulo` INTEGER NULL,
    `nome_tela` VARCHAR(30) NULL,
    `ind_ativo` CHAR(1) NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_DATE,
    `user_alteracao` INTEGER NOT NULL,
    `descricao` VARCHAR(50) NULL,
    `ind_dashboard` CHAR(1) NULL,
    `ind_pesquisa` CHAR(1) NULL,
    `ind_menu` CHAR(1) NULL,

    PRIMARY KEY (`id_tela`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `acesso_usuario` (
    `id_usuario` INTEGER NOT NULL AUTO_INCREMENT,
    `hash_registro` CHAR(32) NULL,
    `nome_usuario` VARCHAR(60) NULL,
    `login_usuario` VARCHAR(60) NULL,
    `senha_usuario` VARCHAR(150) NULL,
    `id_lead` INTEGER NULL,
    `id_pessoa` INTEGER NULL,
    `data_inclusao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_inclusao` INTEGER NOT NULL,
    `data_alteracao` TIMESTAMP(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
    `user_alteracao` INTEGER NOT NULL,
    `ind_bloqueado` CHAR(1) NOT NULL DEFAULT '0',
    `ind_ativo` CHAR(1) NOT NULL DEFAULT '0',
    `ind_expira_senha` CHAR(1) NOT NULL DEFAULT '0',
    `data_hora_bloqueio` TIMESTAMP(6) NULL,
    `data_hora_inativa` TIMESTAMP(6) NULL,
    `data_hora_expira` TIMESTAMP(6) NULL,
    `hash_senha` VARCHAR(32) NULL,
    `data_alteracao_senha` TIMESTAMP(6) NULL,
    `data_inclusao_senha` TIMESTAMP(6) NULL,
    `filtros_coluna` JSON NULL,

    PRIMARY KEY (`id_usuario`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `acesso_acao` ADD CONSTRAINT `acesso_acao_id_acao_tipo_fkey` FOREIGN KEY (`id_acao_tipo`) REFERENCES `acesso_acao_tipo_componente`(`id_acao_tipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_acao_tela` ADD CONSTRAINT `acesso_acao_tela_id_acao_fkey` FOREIGN KEY (`id_acao`) REFERENCES `acesso_acao`(`id_acao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_acao_tela` ADD CONSTRAINT `acesso_acao_tela_id_tela_fkey` FOREIGN KEY (`id_tela`) REFERENCES `acesso_tela`(`id_tela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_acao_tela_perfil` ADD CONSTRAINT `acesso_acao_tela_perfil_id_acao_tela_fkey` FOREIGN KEY (`id_acao_tela`) REFERENCES `acesso_acao_tela`(`id_acao_tela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_acao_tela_perfil` ADD CONSTRAINT `acesso_acao_tela_perfil_id_perfil_fkey` FOREIGN KEY (`id_perfil`) REFERENCES `acesso_perfil`(`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_menu` ADD CONSTRAINT `acesso_menu_id_menu_pai_fkey` FOREIGN KEY (`id_menu_pai`) REFERENCES `acesso_menu`(`id_menu`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_menu` ADD CONSTRAINT `acesso_menu_id_tela_fkey` FOREIGN KEY (`id_tela`) REFERENCES `acesso_tela`(`id_tela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_usuario_perfil` ADD CONSTRAINT `acesso_usuario_perfil_id_perfil_fkey` FOREIGN KEY (`id_perfil`) REFERENCES `acesso_perfil`(`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_usuario_perfil` ADD CONSTRAINT `acesso_usuario_perfil_id_usuario_fkey` FOREIGN KEY (`id_usuario`) REFERENCES `acesso_usuario`(`id_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_perfil_acao` ADD CONSTRAINT `acesso_perfil_acao_id_acao_fkey` FOREIGN KEY (`id_acao`) REFERENCES `acesso_acao`(`id_acao`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_perfil_acao` ADD CONSTRAINT `acesso_perfil_acao_id_perfil_fkey` FOREIGN KEY (`id_perfil`) REFERENCES `acesso_perfil`(`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_perfil_tela` ADD CONSTRAINT `acesso_perfil_tela_id_perfil_fkey` FOREIGN KEY (`id_perfil`) REFERENCES `acesso_perfil`(`id_perfil`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_perfil_tela` ADD CONSTRAINT `acesso_perfil_tela_id_tela_fkey` FOREIGN KEY (`id_tela`) REFERENCES `acesso_tela`(`id_tela`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_tela` ADD CONSTRAINT `acesso_tela_id_modulo_fkey` FOREIGN KEY (`id_modulo`) REFERENCES `acesso_modulo`(`id_modulo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

-- AddForeignKey
ALTER TABLE `acesso_tela` ADD CONSTRAINT `acesso_tela_id_tela_fkey` FOREIGN KEY (`id_tela`) REFERENCES `acesso_tela`(`id_tela`) ON DELETE NO ACTION ON UPDATE NO ACTION;
