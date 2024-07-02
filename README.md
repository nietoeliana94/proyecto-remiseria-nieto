# proyecto-remiseria-nieto
# PRESENTACIÓN DE BASES DE DATOS PARA UNA REMISERÍA -
## PRIMERA ENTREGA

Alumna: Nieto Eliana

Comisión: 57190

Profesor: Anderson Ocaña

Tutor: Leonel Lo Presi

## Problema
La remisería tiene varios problemas con la gestión de sus operaciones diarias en el manejo de información.
Actualmente, la información se maneja en hojas de cálculo y registros manuales, lo que causa muchos errores duplicados y dificulta el seguimiento de todo.

## Descripción del problema
1. ### Errores y duplicaciones:
   La información no está centralizada, lo que provoca errores y duplicados en los registros.
2. ### Seguimiento difícil:
   Es complicado hacer un seguimiento de la disponibilidad de autos y conductores, así como del hisorial de reservas y pagos.
3. ### Ineficiencia operativa:
   Los procesos manuales son lentos y consumen mucho tiempo, afectando la eficiencia y la calidad del servicio al cliente.
4. ### Tarifas inconsistentes:
   Se aplican las tarifas de manera inconsistente, lo que genera insatisfacción en los clientes.

## Objetivos:
Desarrollar una base de datos, el cual organizará la información de manera eficiente. Con esto, lo que se busca es:
    1. Facilitar la gestión y el seguimiento de reservas y pagos.
    2. Ofrecer un servicio más rápido y personalizado a los clientes.
    3. Tener un control claro y actualizado de la disponibilidad de autos y conductores.
    4. Aplicar arifas de manera consistente y transparente.

## Descripción de la base de datos:

  ## Tablas:
1. ### Clientes:
   * Almacena información básica de los clientes.
   * Permite la identificación única de cada cliente.
   * Atributos: ID_Cliente, Nombre, Apellido, Teléfono, Email
2. ### Conductores:
   * Almacena información básica de los conductores.
   * Permite la identificación única de cada conductor.
   * Atributos: ID_Conductor Nombre, Apellido, Teléfono, Email
3. ### Autos:
   * Almacena detalles de los autos, como matrícula, marca, modelo.
   * Asocia cada auto con un conductor específico.
   * Atributos: ID_Auto, Matrícula, Marca, Modelo, ID_Conductor
4. ### Reservas:
   * Permite a los clientes realizar reservas especificando la fecha y hora, origen y destino.
   * Asocia cada reserva con un cliente y un auto específico.
   * Atributos: ID_Reserva, ID_Cliente, ID_Auto, Fecha_Hora, Origen, Destino
5. ### Viajes:
   * Registra los detalles de cada viaje, incluyendo la reserva asociada.
   * Permite la identificación única de cada viaje.
   * Atributos: ID_Viaje, ID_Reserva, Fecha_Hora_Inicio, Fecha_Hora_Fin, Kilometraje
6. ### Pagos:
   * Registra los pagos realizados por las reservas.
   * Asocia cada pago con una reserva específica.
   * Atributos: ID_Pago, ID_Reserva, Fecha_Pago, Monto, Método_Pago
7. ### Tarifas:
   * Define tarifas por kilómetro para los viajes.
   * Almacena una descripción ed cada tarifa y su precio por kilómetro.
   * Atributos: ID_Tarifa, Descripción, Precio_Kilómetro
8. ### Zonas:
   * Define diferentes zonas con tarifas base y precios por kilómetro.
   * Asocia las zonas con tarifas específicas.
   * Atributos: ID_Zona, Nombre_Zona, Tarifa_Base, Precio_Kilómetro (FK de tarifas)

## Diagrama Entidad Relación
![DER](https://github.com/nietoeliana94/proyecto-remiseria-nieto/assets/174378943/cf01930e-2811-4353-9f49-e13d8c952411)
