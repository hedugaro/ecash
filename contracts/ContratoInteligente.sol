pragma solidity ^0.4.2;

contract ContratoInteligente {
address dueno;
address empresa;
//mapping (address => uint) inversionistas;
address inversionista;
bool primera_validacion;
bool segunda_validacion;

function ContratoInteligente(){
  dueno = msg.sender;
}

//variables inversionista: nombres, apellidos, correo electronico, usuario, nacionalidad,
//estado civil, tipo documento, numero documento, departamento, provincia,
//distrito, direccion, primera_aceptacion_digital
struct perfil_inversionista{
  string nombres;
  string apellidos;
  string correo_electronico;
  string usuario;
  string nacionalidad;
  string estado_civil;
  string celular;
  string tipo_documento;
  string numero_documento;
  string departamento;
  string provincia;
  string distrito;
  string direccion_residencia;
  bool primera_aceptacion_digital;
}
//tipotrabajador, profesion, ingresos_mensuales, empresa_donde_trabaja, direccion_trabajo, aceptacion_fondos_licitos
//variables e
struct actividadeconomica_inversionista{
  string tipotrabajador;
  string profesion;
  string ingresos_mensuales;
  string empresa_donde_trabaja;
  string direccion_trabajo;

}

//nombre_banco, tipo cuenta, tipo moneda, titular cuenta, numero cuenta, codigo cuenta interbancario,
struct bancario_inversionista{
  string nombre_banco;
  string tipo_cuenta;
  string tipo_moneda;
  string titular_cuenta;
  string numero_cuenta;
  string codigo_interbancario;
  bool segunda_aceptacion_digital_inversionista;
}

struct documentacion_firmas{
  string dni;
  string recibo_servicios;
  bool tercera_fondos_licitos;
}

//empresa:
//nombres,apellidos
struct perfil_persona{
  string nombres;
  string apellidos;
  string correo_electronico;
  string fecha_acimiento;
  string nacionalidad;
  string estado_civil;
  string tipo_documento;
  string numero_documento;
  string departamento;
  string provincia;
  string distrito;
  string direccion_residencia;
  string estudios_alcanzados;
  string calificacion_crediticia;
  bool primera_aceptacion_digital_empresa;
}

struct perfil_empresa{
  string ruc;
  string razon_social;
  string tiempo_constitucion;
  string departamento;
  string provincia;
  string distrito;
  string direccion_fiscal;
  string direccion_comercial;
  string cargo_empresa_representante;
  string celular;
  string ingreso_ventas_mensual;
  string trabaja_con_garantias;
  string tipo_garantias;
}

struct informacion_bancaria{
  string nombre_banco;
  string tipo_cuenta;
  string tipo_moneda;
  string titular_cuenta;
  string numero_cuenta;
  string codigo_interbancario;
  bool segunda_aceptacion_digital_empresa;
}

struct informacion_subasta{
  string monto_total_subastado;
  string tasa_maxima;
  string tasa_negociada;
  string plazo;
  string proposito;
}




function aceptar(){
  //  if (primera_validacion)
  if (msg.sender == dueno)
  {
      suicide(empresa); // Send all funds to seller
  }
    else
      throw;
}

function cancelar(){
  if (msg.sender == dueno)
      suicide(inversionista); // Cancel escrow and return all funds to buyer
    else
      throw;
}

//function subasta(){
//  if (primera_validacion)
//  {
//si tasa negociada <= tasa_maxima => transferir plata inversionista empresa
//caso contrario cerrrar subasta


//  }
//    else
//    {}
//}

}
