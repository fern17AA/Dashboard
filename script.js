(async () => {
    const respuestaRaw = await fetch("./obtener_datos_ajax.php");
    const respuesta = await respuestaRaw.json();
    const $grafica = document.querySelector("#grafica");
    const etiquetas = respuesta.etiquetas; 
    const datosVentas2020 = {
        label: "Ventas por mes 2020",
        data: respuesta.datos, 
        backgroundColor: 'rgba(75, 152, 255, 0.19)', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1,
    };
    const datosVentas2021 = {
        label: "Ventas por mes 2021",
        data: respuesta.datos2021, 
        backgroundColor: 'rgba(255, 46, 35, 0.64)', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1, 
    };
    const datosVentas2022 = {
        label: "Ventas por mes 2022",
        data: respuesta.datos2022, 
        backgroundColor: 'black', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1, 
    };    const datosVentas2023 = {
        label: "Ventas por mes 2021",
        data: respuesta.datos2023, 
        backgroundColor: 'green', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1, 
    };    const datosVentas2024 = {
        label: "Ventas por mes 2024",
        data: respuesta.datos2024, 
        backgroundColor: 'purple', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1, 
    };    const datosVentas2025 = {
        label: "Ventas por mes 2025",
        data: respuesta.datos2025, 
        backgroundColor: 'pink', 
        borderColor: 'rgba(54, 162, 235, 1)', 
        borderWidth: 1, 
    };
    new Chart($grafica, {
        type: 'bar', // Tipo de gráfica
        data: {
            labels: etiquetas,
            datasets: [
                datosVentas2020,
                datosVentas2021,
                datosVentas2022,
                datosVentas2023,
                datosVentas2024,
                datosVentas2025,

            ]
        },
        options: {
            scales: {
                yAxes: [{
                    ticks: {
                        beginAtZero: true
                    }
                }],
            },
        }
    });
})();