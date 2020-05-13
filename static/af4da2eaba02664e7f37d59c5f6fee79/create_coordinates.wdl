version 1.0

task CreateCoordinates {
  input {
    String inputInputVcf
    String outputOutput
  }
  command <<<
    create_coordinates \
      ~{if defined(inputInputVcf) then ("--input_vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}