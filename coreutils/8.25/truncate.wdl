version 1.0

task Truncate {
  input {
    Boolean noNoCreate
    Boolean ioIoBlocks
    String referenceReference
    Int sizeSize
    String? optionOption
    File? fileFile
  }
  command <<<
    truncate \
      ~{optionOption} \
      ~{true="--no-create" false="" noNoCreate} \
      ~{true="--io-blocks" false="" ioIoBlocks} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(sizeSize) then ("--size " +  '"' + sizeSize + '"') else ""} \
      ~{fileFile}
  >>>
}