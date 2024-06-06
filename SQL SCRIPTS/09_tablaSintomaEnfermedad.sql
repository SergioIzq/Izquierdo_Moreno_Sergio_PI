USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[SINTOMA_ENFERMEDAD]    Script Date: 06/06/2024 9:14:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SINTOMA_ENFERMEDAD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_ENFERMEDAD] [int] NOT NULL,
	[ID_SINTOMA] [int] NOT NULL,
 CONSTRAINT [PK_SINTOMA_ENFERMEDAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SINTOMA_ENFERMEDAD]  WITH CHECK ADD  CONSTRAINT [FK_SINTOMA_ENFERMEDAD_ENFERMEDAD] FOREIGN KEY([ID_ENFERMEDAD])
REFERENCES [dbo].[ENFERMEDAD] ([ID])
GO

ALTER TABLE [dbo].[SINTOMA_ENFERMEDAD] CHECK CONSTRAINT [FK_SINTOMA_ENFERMEDAD_ENFERMEDAD]
GO

ALTER TABLE [dbo].[SINTOMA_ENFERMEDAD]  WITH CHECK ADD  CONSTRAINT [FK_SINTOMA_ENFERMEDAD_SINTOMA] FOREIGN KEY([ID_SINTOMA])
REFERENCES [dbo].[SINTOMA] ([ID])
GO

ALTER TABLE [dbo].[SINTOMA_ENFERMEDAD] CHECK CONSTRAINT [FK_SINTOMA_ENFERMEDAD_SINTOMA]
GO


-- Insertar din�micamente el ID de enfermedad y s�ntoma por su nombre
INSERT INTO SINTOMA_ENFERMEDAD (ID_ENFERMEDAD, ID_SINTOMA)
VALUES 
    -- Hipertensi�n - Dolor de cabeza
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hipertensi�n'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Dolor de cabeza')
    ),
    -- Hipertensi�n - Mareos
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hipertensi�n'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Mareos')
    ),
    -- Hipertensi�n - Visi�n borrosa
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hipertensi�n'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Visi�n borrosa')
    ),
    -- Hipertensi�n - Fatiga
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hipertensi�n'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Fatiga')
    ),
    -- Hipertensi�n - P�rdida temporal del conocimiento
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hipertensi�n'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'P�rdida temporal del conocimiento')
    ),
    -- Sincope hipotensivo - Sensaci�n de desmayo
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Sincope hipotensivo'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Sensaci�n de desmayo')
    ),
    -- Diabetes Gestacional - Aumento de la sed
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Diabetes Gestacional'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Aumento de la sed')
    ),
    -- Diabetes Gestacional - Micci�n frecuente
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Diabetes Gestacional'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Micci�n frecuente')
    ),
    -- Diabetes Ins�pida - Aumento de la sed
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Diabetes Ins�pida'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Aumento de la sed')
    ),
    -- Diabetes Ins�pida - Micci�n frecuente
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Diabetes Ins�pida'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Micci�n frecuente')
    ),
    -- Trastorno Bipolar - Cambios extremos de humor
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Trastorno Bipolar'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Cambios extremos de humor')
    ),
    -- Trastorno Bipolar - Periodos de alta energ�a
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Trastorno Bipolar'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Periodos de alta energ�a')
    ),
    -- Trastorno de Ansiedad - Preocupaci�n excesiva
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Trastorno de Ansiedad'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Preocupaci�n excesiva')
    ),
    -- Trastorno de Ansiedad - Inquietud
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Trastorno de Ansiedad'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Inquietud')
    ),
    -- Infarto de Miocardio - Dolor tor�cico
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Infarto de Miocardio'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Dolor tor�cico')
    ),
    -- Infarto de Miocardio - Falta de aire
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Infarto de Miocardio'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Falta de aire')
    ),
    -- Insuficiencia Card�aca - Fatiga
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Insuficiencia Card�aca'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Fatiga')
    ),
    -- Insuficiencia Card�aca - Hinchaz�n en las piernas, tobillos o abdomen
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Insuficiencia Card�aca'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Hinchaz�n en las piernas, tobillos o abdomen')
    ),
    -- Neumon�a Viral - Tos seca o con flema
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Neumon�a Viral'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Tos seca o con flema')
    ),
    -- Neumon�a Viral - Dolor en el pecho al respirar o toser
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Neumon�a Viral'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Dolor en el pecho al respirar o toser')
    ),
    -- Neumon�a Bacteriana - Fiebre
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Neumon�a Bacteriana'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Fiebre')
    ),
    -- Neumon�a Bacteriana - Escalofr�os y temblores
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Neumon�a Bacteriana'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Escalofr�os y temblores')
    ),
    -- Cardiomiopat�a - Tos con flema amarilla, verde o marr�n
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Cardiomiopat�a'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Tos con flema amarilla, verde o marr�n')
    ),
    -- Cardiomiopat�a - Sensaci�n de que el coraz�n late de forma irregular
    (
        (SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Cardiomiopat�a'),
        (SELECT ID FROM SINTOMA WHERE NOMBRE = 'Siento de que el coraz�n late de forma irregular')
	),
	-- Arritmia Cardiaca - Palpitaciones
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Arritmia Cardiaca'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Palpitaciones')
	),
	-- Hemorragia Cerebral - Debilidad o entumecimiento en la cara, brazo o pierna, especialmente en un lado del cuerpo
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hemorragia Cerebral'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Debilidad o entumecimiento en la cara, brazo o pierna, especialmente en un lado del cuerpo')
	),
	-- Hemorragia Cerebral - Problemas de visi�n en uno o ambos ojos
	(	
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Hemorragia Cerebral'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Problemas de visi�n en uno o ambos ojos')
	),
	-- Isquemia Cerebral - Producci�n excesiva de esputo
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Isquemia Cerebral'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Producci�n excesiva de esputo')
	),
	-- Isquemia Cerebral - Tos persistente
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Isquemia Cerebral'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Tos persistente')
	),
	-- Enfermedad Pulmonar Obstructiva Cr�nica (EPOC) - Falta de aire
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Enfermedad Pulmonar Obstructiva Cr�nica (EPOC)'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Falta de aire')
	),
	-- Enfermedad Pulmonar Obstructiva Cr�nica (EPOC) - Tos con flema amarilla, verde o marr�n
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Enfermedad Pulmonar Obstructiva Cr�nica (EPOC)'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Tos con flema amarilla, verde o marr�n')
	),
	-- Bronquitis Cr�nica - Tos persistente
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Bronquitis Cr�nica'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Tos persistente')
	),
	-- Bronquitis Cr�nica - Producci�n excesiva de esputo
	(
	(SELECT ID FROM ENFERMEDAD WHERE NOMBRE = 'Bronquitis Cr�nica'),
	(SELECT ID FROM SINTOMA WHERE NOMBRE = 'Producci�n excesiva de esputo')
);	
