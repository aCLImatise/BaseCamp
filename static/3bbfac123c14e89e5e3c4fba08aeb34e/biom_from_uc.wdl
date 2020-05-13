version 1.0

task BiomFromUc {
  input {
    File inputInputFp
    File outputOutputFp
    File repRepSetFp
  }
  command <<<
    biom from-uc \
      ~{if defined(inputInputFp) then ("--input-fp " +  '"' + inputInputFp + '"') else ""} \
      ~{if defined(outputOutputFp) then ("--output-fp " +  '"' + outputOutputFp + '"') else ""} \
      ~{if defined(repRepSetFp) then ("--rep-set-fp " +  '"' + repRepSetFp + '"') else ""}
  >>>
}