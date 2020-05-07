version 1.0

task BioformatsBedautosql {
  input {
    String nameName
    String descriptionDescription
    String linesLines
    String? bedBedFile
    String? outputOutputFile
  }
  command <<<
    bioformats bedautosql \
      ~{bedBedFile} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(descriptionDescription) then ("--description " +  '"' + descriptionDescription + '"') else ""} \
      ~{if defined(linesLines) then ("--lines " +  '"' + linesLines + '"') else ""} \
      ~{outputOutputFile}
  >>>
}