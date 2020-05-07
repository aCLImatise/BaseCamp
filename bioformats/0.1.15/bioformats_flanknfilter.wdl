version 1.0

task BioformatsFlanknfilter {
  input {
    String typeType
    Int lengthLength
    Boolean strictStrict
    String? inputInputFile
    String? fastFastAFile
    String? outputOutputFile
  }
  command <<<
    bioformats flanknfilter \
      ~{inputInputFile} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(lengthLength) then ("--length " +  '"' + lengthLength + '"') else ""} \
      ~{true="--strict" false="" strictStrict} \
      ~{fastFastAFile} \
      ~{outputOutputFile}
  >>>
}