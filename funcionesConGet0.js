function verElementosDeMiPagina(){
var parrafos = document.getElementsByTagName("p");
console.log("Párrafos:" , parrafos);

var primerparrafo = parrafos[1];
console.log("Párrafos:" , primerparrafo);

var enclaces =primerparrafo.getElementsByTagName("a");
console.log("enlaces:" , enclaces);

enlaces= parrafos[1].getElementsByClassName("a");
console.log("enlaces2:" , enlaces);

var elementoNuevo = document.getElementById("demo");
console.log("elementoNuevo:" , elementoNuevo);

}

function verElementosDeMiPagina2(){
var parrafos = document.getElementsByTagName("p");

    for(var i=0;i<parrafos.length;i++){
        console.log(parrafos[i].getElementsByTagName("a") );
 //let a =(hora>12)?"opción A":"opción b";
 verHora();
}
}

function verHora(){
const hoy = new Date();
const diaActual =hoy.getDate();
console.log(diaActual); 
const dias=["Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado"];
console.log(`Hoy es : ${[diaActual]}.`); 
let hora = hoy.getHours();
const minutos= hoy.getMinutes();
const segundos= hoy.getSeconds();
let amPm =(hora>=12)?"PM":"AM";
Hora=(amPm=="PM")?hora-12:hora;
console.log(`Hora actual: ${hora}:${minutos}:${segundos} ${amPm}`); 
}