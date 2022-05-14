enum Genre { male, female, notDefined }

String renderGenreOption({required Genre genero}) {
  switch (genero) {
    case Genre.notDefined:
      {
        return "Seleccione un genero";
      }
    case Genre.male:
      {
        return "Ha seleccionado masculino";
      }
    case Genre.female:
      {
        return "Ha seleccionado femenino";
      }
    default:
      {
        return "Seleccione un genero";
      }
  }
}
