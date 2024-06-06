USE [ProyectoIntegrado]
GO

/****** Object:  Table [dbo].[MEDICAMENTO]    Script Date: 06/06/2024 8:45:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MEDICAMENTO](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_FAMILIA_MEDICAMENTO] [int] NOT NULL,
	  NOT NULL,
	  NULL,
	[PRECIO] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_MEDICAMENTO] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[MEDICAMENTO]  WITH CHECK ADD  CONSTRAINT [FK_MEDICAMENTO_FAMILIA_MEDICAMENTO] FOREIGN KEY([ID_FAMILIA_MEDICAMENTO])
REFERENCES [dbo].[FAMILIA_MEDICAMENTO] ([ID])
GO

ALTER TABLE [dbo].[MEDICAMENTO] CHECK CONSTRAINT [FK_MEDICAMENTO_FAMILIA_MEDICAMENTO]
GO

-- Obtener los IDs de la tabla FAMILIA_MEDICAMENTO
DECLARE @AntagonistaAngiotensinaII INT,
        @Antidiabeticos INT,
        @EstabilizadorEstadoAnimo INT,
        @Diuretico INT,
        @AgenteEstimulanteEritropoyesis INT,
        @Salicilatos INT,
        @InhibidoresNeuraminidasa INT,
        @Antibiotico INT,
        @Antiarr�tmico INT,
        @Corticoide INT,
        @InhibidorSelectivoSerotonina INT,
        @AntagonistasReceptorAldosterona INT,
        @InhibidoresEnzimaConvertidoraAngiotensina INT,
        @Tromboliticos INT,
        @BroncodilatadorAnticolinergico INT,
        @PruebaFamilia INT;

-- Asignar los valores de los IDs
SELECT 
    @AntagonistaAngiotensinaII = ID,
    @Antidiabeticos = ID,
    @EstabilizadorEstadoAnimo = ID,
    @Diuretico = ID,
    @AgenteEstimulanteEritropoyesis = ID,
    @Salicilatos = ID,
    @InhibidoresNeuraminidasa = ID,
    @Antibiotico = ID,
    @Antiarr�tmico = ID,
    @Corticoide = ID,
    @InhibidorSelectivoSerotonina = ID,
    @AntagonistasReceptorAldosterona = ID,
    @InhibidoresEnzimaConvertidoraAngiotensina = ID,
    @Tromboliticos = ID,
    @BroncodilatadorAnticolinergico = ID,
    @PruebaFamilia = ID
FROM FAMILIA_MEDICAMENTO
WHERE NOMBRE IN (
    'Antagonista del receptor de angiotensina II',
    'Antidiab�ticos',
    'Estabilizador del estado de �nimo',
    'Diur�tico',
    'Agente estimulante de la eritropoyesis',
    'Salicilatos',
    'Inhibidores de la neuraminidasa',
    'Antibi�tico',
    'Antiarr�timico',
    'Corticoide',
    'Inhibidor selectivo de la recaptaci�n de serotonina',
    'Antagonistas del receptor de la aldosterona',
    'Inhibidores de la enzima convertidora de la angiotensina (ACE)',
    'Trombol�ticos',
    'Broncodilatador anticolin�rgico.',
    'PruebaFamilia'
);

-- Insertar registros en la tabla MEDICAMENTO
INSERT INTO MEDICAMENTO (ID_FAMILIA_MEDICAMENTO, NOMBRE, DESCRIPCION, PRECIO)
VALUES
    (@AntagonistaAngiotensinaII, 'Losart�n', 'Medicamento que se usa para tratar la presi�n arterial alta. El losart�n pot�sico bloquea la acci�n de las sustancias qu�micas que hacen contraer (hacer m�s estrechos) los vasos sangu�neos.', 7.00),
    (@AgenteEstimulanteEritropoyesis, 'Eritropoyetina', 'Sustancia fabricada naturalmente por los ri�ones y que estimula la m�dula �sea para que produzca gl�bulos rojos.', 15.00),
    (@Antidiabeticos, 'Insulina', 'La insulina es una hormona liberada por el p�ncreas como respuesta a la presencia de glucosa en la sangre.', 7.00),
	(@Antidiabeticos, 'Desmopresina', 'An�logo sint�tico de la arginina vasopresina (hormona antidiur�tica [ADH]), con un efecto m�s potente y prolongado que esta, pero sin su efecto vasopresor.', 12.00),
    (@EstabilizadorEstadoAnimo, 'Litio', 'Se utiliza para tratar y prevenir los episodios de man�a (�nimo fren�tico, anormalmente emocionado) en las personas con trastorno bipolar.', 15.00),
    (@InhibidorSelectivoSerotonina, 'Sertralina', 'Su acci�n consiste en aumentar la cantidad de serotonina, una sustancia natural del cerebro que ayuda a mantener el equilibrio mental.', 20.00),
	(@Salicilatos, 'Aspirina', 'Su acci�n consiste en detener la producci�n de ciertas sustancias naturales que causan fiebre, dolor, inflamaci�n y co�gulos sangu�neos.', 10.00),
	(@AntagonistasReceptorAldosterona, 'Espironolactona', 'Hace que los ri�ones eliminen en la orina el agua y el sodio innecesarios del cuerpo, pero reduce la p�rdida de potasio del cuerpo.', 7.00),
	(@InhibidoresNeuraminidasa, 'Oseltamivir', 'Estos medicamentos previenen la propagaci�n del virus de la gripe dentro del cuerpo. Ayudan a aliviar o a prevenir los s�ntomas de la infecci�n por el virus de la gripe.', 25.00),
	(@Antibiotico, 'Azitromicina', 'Su acci�n consiste en detener el crecimiento de las bacterias. Los antibi�ticos como la azitromicina no act�an para combatir resfriados, influenza u otras infecciones virales.', 8.00),
    (@InhibidoresEnzimaConvertidoraAngiotensina, 'Enalapril', 'Controla la presi�n arterial alta y la insuficiencia card�aca, pero no las cura. Siga tomando el enalapril aunque se sienta bien.', 3.00),    
    (@Antiarr�tmico, 'Amiodarona', 'Medicamento que se usa para tratar ciertos tipos de ritmos card�acos anormales que no mejoraron con otros medicamentos. El clorhidrato de amiodarona afecta la actividad el�ctrica del coraz�n. Es un tipo de antiarr�tmico. Tambi�n se llama Corderone.', 15.00),
    (@Diuretico, 'Manitol', 'Medicamento usado para disminuir la inflamaci�n del cerebro y para tratar la insuficiencia renal.', 7.00),
    (@Tromboliticos, 'Alteplasa', 'Forma de activador del plasmin�geno tisular que se produce en el laboratorio. Ayuda a disolver los co�gulos de sangre y se usa para tratar ataques card�acos, accidentes cerebrovasculares y co�gulos en los pulmones.', 600.00),
    (@BroncodilatadorAnticolinergico, 'Tiotropio', 'El tiotropio pertenece a una clase de medicamentos llamados broncodilatadores. Act�a relajando y abriendo las v�as respiratorias que van a los pulmones para facilitar la respiraci�n.', 50.00),
    (@Corticoide, 'Prednisona', 'Se utiliza para tratar una variedad de condiciones m�dicas, incluyendo trastornos inflamatorios, alergias, enfermedades autoinmunes y algunos tipos de c�ncer.', 6.00)
;
    
    
    

