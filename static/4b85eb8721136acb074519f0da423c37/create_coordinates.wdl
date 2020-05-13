version 1.0

task CreateCoordinates.py {
  input {
    String inputInputVcf
    String outputOutput
  }
  command <<<
    create_coordinates.py \
      ~{if defined(inputInputVcf) then ("--input_vcf " +  '"' + inputInputVcf + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}