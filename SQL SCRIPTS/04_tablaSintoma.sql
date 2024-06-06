USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[SINTOMA]    Script Date: 06/06/2024 8:42:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[SINTOMA](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	  NOT NULL,
	  NOT NULL,
 CONSTRAINT [PK_SINTOMA] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[SINTOMA] ([NOMBRE], [TIPO])
VALUES
    ('Dolor de cabeza', 'F�sico'),
    ('Mareos', 'F�sico'),
    ('Visi�n borrosa', 'F�sico'),
    ('Fatiga', 'F�sico'),
    ('P�rdida temporal del conocimiento', 'F�sico'),
    ('Sensaci�n de desmayo', 'F�sico'),
    ('Aumento de la sed', 'F�sico'),
    ('Micci�n frecuente', 'F�sico'),
    ('Debilidad muscular', 'F�sico'),
    ('Dolor tor�cico', 'F�sico'),
    ('Falta de aire', 'F�sico'),
    ('N�useas', 'F�sico'),
    ('Sudoraci�n excesiva', 'F�sico'),
    ('Hinchaz�n en las piernas, tobillos o abdomen', 'F�sico'),
    ('Confusi�n', 'F�sico'),
    ('Tos seca o con flema', 'F�sico'),
    ('Dolor en el pecho al respirar o toser', 'F�sico'),
    ('Fiebre', 'F�sico'),
    ('Escalofr�os y temblores', 'F�sico'),
    ('Tos con flema amarilla, verde o marr�n', 'F�sico'),
    ('Sensaci�n de que el coraz�n late de forma irregular', 'F�sico'),
    ('Palpitaciones', 'F�sico'),
    ('Debilidad o entumecimiento en la cara, brazo o pierna, especialmente en un lado del cuerpo', 'F�sico'),
    ('Problemas de visi�n en uno o ambos ojos', 'F�sico'),
    ('Producci�n excesiva de esputo', 'F�sico'),
    ('Tos persistente', 'F�sico'),
    ('Cambios extremos de humor', 'Mental'),
    ('Periodos de alta energ�a', 'Mental'),
    ('Periodos de depresi�n', 'Mental'),
    ('Problemas de sue�o', 'Mental'),
    ('Preocupaci�n excesiva', 'Mental'),
    ('Inquietud', 'Mental'),
    ('Dificultad para concentrarse', 'Mental')
GO
