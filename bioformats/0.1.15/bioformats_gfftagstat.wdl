version 1.0

task BioformatsGfftagstat {
  input {
    String sourceSource
    String typeType
    String? gffGffFile
  }
  command <<<
    bioformats gfftagstat \
      ~{gffGffFile} \
      ~{if defined(sourceSource) then ("--source " +  '"' + sourceSource + '"') else ""} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""}
  >>>
}