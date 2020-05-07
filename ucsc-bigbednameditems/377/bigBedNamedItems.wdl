version 1.0

task BigBedNamedItems {
  input {
    String nameNameFile
    String fieldField
    File? fileFileBb
    String? nameName
    String? outputOutputBed
  }
  command <<<
    bigBedNamedItems \
      ~{fileFileBb} \
      ~{if defined(nameNameFile) then ("-nameFile " +  '"' + nameNameFile + '"') else ""} \
      ~{if defined(fieldField) then ("-field " +  '"' + fieldField + '"') else ""} \
      ~{nameName} \
      ~{outputOutputBed}
  >>>
}