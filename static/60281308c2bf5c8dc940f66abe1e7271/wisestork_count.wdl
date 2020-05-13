version 1.0

task WisestorkCount {
  input {
    Int binsizeBinsize
    File referenceReference
    File binBinFile
    File outputOutput
    File inputInput
  }
  command <<<
    wisestork count \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(binBinFile) then ("--bin-file " +  '"' + binBinFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""}
  >>>
}