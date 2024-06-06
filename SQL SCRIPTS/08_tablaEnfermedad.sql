USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[ENFERMEDAD]    Script Date: 06/06/2024 9:06:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[ENFERMEDAD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_FAMILIA_ENFERMEDAD] [int] NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_ENFERMEDAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ENFERMEDAD]  WITH CHECK ADD  CONSTRAINT [FK_ENFERMEDAD_FAMILIA_ENFERMEDAD] FOREIGN KEY([ID_FAMILIA_ENFERMEDAD])
REFERENCES [dbo].[FAMILIA_ENFERMEDAD] ([ID])
GO

ALTER TABLE [dbo].[ENFERMEDAD] CHECK CONSTRAINT [FK_ENFERMEDAD_FAMILIA_ENFERMEDAD]
GO


-- Obtener los IDs de la tabla FAMILIA_ENFERMEDAD
DECLARE @Hipertension INT,
        @Diabetes INT,
        @DepresionMental INT,
        @ArteriosclerosisCoronaria INT,
        @Neumonia INT,
        @InsuficienciaCardiacaCongestiva INT,
        @AccidenteCerebrovascular INT,
        @Asma INT;

-- Asignar los valores de los IDs
SELECT 
    @Hipertension = ID,
    @Diabetes = ID,
    @DepresionMental = ID,
    @ArteriosclerosisCoronaria = ID,
    @Neumonia = ID,
    @InsuficienciaCardiacaCongestiva = ID,
    @AccidenteCerebrovascular = ID,
    @Asma = ID
FROM FAMILIA_ENFERMEDAD
WHERE NOMBRE IN (
    'Hipertensi�n',
    'Diabetes',
    'Depresi�n Mental',
    'Arteriosclerosis Coronaria',
    'Neumon�a',
    'Insuficiencia Cardiaca Congestiva',
    'Accidente Cerebrovascular',
    'Asma'
);

-- Insertar registros en la tabla enfermedad
INSERT INTO ENFERMEDAD (ID_FAMILIA_ENFERMEDAD, NOMBRE)
VALUES
    (@Hipertension, 'Hipertensi�n'),
    (@Hipertension, 'Sincope hipotensivo'),
    (@Diabetes, 'Diabetes Gestacional'),
    (@Diabetes, 'Diabetes Ins�pida'),
    (@DepresionMental, 'Trastorno Bipolar'),
    (@DepresionMental, 'Trastorno de Ansiedad'),
    (@ArteriosclerosisCoronaria, 'Infarto de Miocardio'),
    (@ArteriosclerosisCoronaria, 'Insuficiencia Card�aca'),
    (@Neumonia, 'Neumon�a Viral'),
    (@Neumonia, 'Neumon�a Bacteriana'),
    (@InsuficienciaCardiacaCongestiva, 'Cardiomiopat�a'),
    (@AccidenteCerebrovascular, 'Arritmia Cardiaca'),
    (@Asma, 'Hemorragia Cerebral'),
    (@Asma, 'Isquemia Cerebral'),
    (@Asma, 'Enfermedad Pulmonar Obstructiva Cr�nica (EPOC)'),
    (@Asma, 'Bronquitis Cr�nica')
;
