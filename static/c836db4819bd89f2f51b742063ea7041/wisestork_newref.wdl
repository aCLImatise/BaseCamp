version 1.0

task WisestorkNewref {
  input {
    Int binsizeBinsize
    File referenceReference
    File binBinFile
    File inputInput
    File outputOutput
    Int nNBins
  }
  command <<<
    wisestork newref \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(binBinFile) then ("--bin-file " +  '"' + binBinFile + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(nNBins) then ("--n-bins " +  '"' + nNBins + '"') else ""}
  >>>
}