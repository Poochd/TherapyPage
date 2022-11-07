Feature: US01
  Registro Cliente
  Scenario Outline: El cliente no tiene cuenta
    Given El cliente [cliente] es nuevo en la aplicación
    When el estado del cliente es [registrado]
    Then  al rellenar el formulario del aplicativo móvil se registrará exitosamente y se mostrará el mensaje [mensaje]
    Examples:
    |cliente|registrado|mensaje1|
    |A      |no registrado|Registrado exitosamente|
    |B      |registrado   |Ya está registrado     |

  Scenario Outline: El cliente intenta registrarse pero no completa uno o más  campos del formulario
    Given cliente intenta registrarse en la app
    When completa todos los otros datos pero deja vacío el [campo]
    Then  al darle registrar le aparecerá el mensaje [mensaje]
    Examples:
    |campo    |mensaje                           |
    |name     |El campo nombre es obligatorio    |
    |last name| El campo apellio es obligatorio  |
    |password |El campo contraseña es obligatorio|
    |age      |El campo edad es obligatorio      |

  Scenario Outline: El Cliente intenta registrarse pero pone una edad mayor a 30 o menor a 18
    Given cliente intenta registrarse en la app
    When completa todos los otros datos pero ingresa una  edad [edad]
    Then al darle registrar le aparecerá el mensaje [mensaje]
    Examples:
    |edad|mensaje|
    |16  |"La edad minima es de 18"|
    |18  |                         |
    |34  |"La edad maxima es de 30"|

Feature: US02
  Actualización de datos del Cliente
  Scenario Outline: El cliente quiere actualizar sus datos
    Given el Cliente quiere actualizar un [campo] de su cuenta
    When se encuentra en la página [mi cuenta]
    And selecciona el botón [Actualizar datos]
    Then puede cambiar el [valor] del [campo] y presionar el botón[Aceptar] para guardarlo en la base de datos y mostrar un [mensaje]

    Examples:
    |mi cuenta|dato|valor|Actualizar datos|Aceptar|mensaje|
    |Yes      |password|1234|Yes        |Yes            | Datos actualizados|
    |Yes      |phone|123456789|Yes        |Yes            | Datos actualizados|


Feature: US04
  Visualización de lista de tipos de suscripción
  Scenario Outline: El Cliente quiere visualizar tipos de suscripciones
    Given el Cliente quiere visualizar los tipos de suscripciones en la aplicación
    And se encuentra en la app
    When se ubique en el área de [subscripciones]
    Then podrá visualizar los [planes] de pago.
    Examples
    |subcripciones|planes|
    |yes          |yes   |
    |no           |no    |

    
