USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[FAMILIA_ENFERMEDAD]    Script Date: 06/06/2024 9:04:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FAMILIA_ENFERMEDAD](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NOMBRE] [varchar](50) NOT NULL,
	[TIPO] [varchar](50) NOT NULL,
	[DESCRIPCION] [varchar](255) NULL,
 CONSTRAINT [PK_FAMILIA_ENFERMEDAD] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


INSERT INTO [dbo].[FAMILIA_ENFERMEDAD] ([NOMBRE], [TIPO], [DESCRIPCION])
VALUES ('Hipertensi�n', 'Tastorno cardiovascular', 'Enfermedad caracterizada por una presi�n arterial elevada.'),
       ('Diabetes', 'Trastorno Metab�lico', 'Enfermedad metab�lica que resulta en niveles elevados de az�car en la sangre.'),
       ('Arteriosclerosis Coronaria', 'Enfermedad Cardiovascular', 'Enfermedades que afectan a las arterias coronarias, que suministran sangre al m�sculo card�aco.'),
       ('Depresi�n Mental', 'Trastorno del Estado de �nimo', 'Trastorno del estado de �nimo que provoca sentimientos persistentes de tristeza y p�rdida de inter�s.'),
       ('Neumon�a', 'Infecci�n Pulmonar', 'Infecci�n respiratoria que inflama los sacos a�reos de los pulmones.'),
       ('Insuficiencia Card�aca Congestiva', 'Trastorno Cardiaco', 'Condici�n cr�nica en la que el coraz�n no puede bombear suficiente sangre para satisfacer las necesidades del cuerpo.'),
       ('Accidente Cerebrovascular', 'Trastorno Cerebrovascular', 'Interrupci�n del flujo sangu�neo al cerebro, lo que causa da�o cerebral.'),
       ('Asma', 'Trastorno Respiratorio', 'Enfermedad cr�nica de las v�as respiratorias que causa dificultad para respirar.');
