USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[FAMILIA_MEDICAMENTO]    Script Date: 06/06/2024 8:43:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[FAMILIA_MEDICAMENTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	  NOT NULL,
	  NULL,
 CONSTRAINT [PK_FAMILIA_MEDICAMENTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT INTO [dbo].[FAMILIA_MEDICAMENTO] ([NOMBRE], [DESCRIPCION])
VALUES
    ('Antagonista del receptor de angiotensina II', 'Utilizados principalmente para tratar la hipertensi�n y algunas enfermedades renales cr�nicas.'),
    ('Antidiab�ticos', 'Se clasificar�a en la familia de los agentes antidiab�ticos, utilizados para el tratamiento de la diabetes mellitus.'),
    ('Estabilizador del estado de �nimo', 'Com�nmente utilizado en el tratamiento del trastorno bipolar.'),
    ('Diur�tico', 'Se utiliza para tratar la insuficiencia card�aca, entre otras condiciones.'),
    ('Agente estimulante de la eritropoyesis', 'Es una citocina glucoproteica que estimula la formaci�n de eritrocitos y es el principal agente estimulador de la eritropoyesis natural.'),
    ('Salicilatos', 'Se utiliza como medicamento para tratar el dolor, la fiebre y la inflamaci�n, debido a su efecto inhibitorio, no selectivo, de la ciclooxigenasa.'),
    ('Inhibidores de la neuraminidasa', 'Funciona por medio de detener la propagaci�n del virus de influenza en el cuerpo.'),
    ('Antibi�tico', 'Funcionan matando las bacterias o dificultando su crecimiento y multiplicaci�n.'),
    ('Antiarr�timico', 'Se utilizan para tratar las alteraciones del ritmo card�aco denominadas arritmias y para aliviar los s�ntomas relacionados con ellas.'),
    ('Corticoide', 'Estas sustancias son esenciales para la vida y regulan funciones cardiovasculares, metab�licas, inmunol�gicas, y homeost�ticas.'),
    ('Inhibidor selectivo de la recaptaci�n de serotonina', NULL),
    ('Antagonistas del receptor de la aldosterona', NULL),
    ('Inhibidores de la enzima convertidora de la angiotensina (ACE)', NULL),
    ('Trombol�ticos', NULL),
    ('Broncodilatador anticolin�rgico.', NULL)
GO
