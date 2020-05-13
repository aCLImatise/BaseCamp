version 1.0

task WisestorkGcCorrect {
  input {
    Int binsizeBinsize
    File referenceReference
    File binBinFile
    File outputOutput
    File inputInput
    Float fracFracN
    Float fracFracR
    Int iterIter
    Float fracFracLowess
  }
  command <<<
    wisestork gc-correct \
      ~{if defined(binsizeBinsize) then ("--binsize " +  '"' + binsizeBinsize + '"') else ""} \
      ~{if defined(referenceReference) then ("--reference " +  '"' + referenceReference + '"') else ""} \
      ~{if defined(binBinFile) then ("--bin-file " +  '"' + binBinFile + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(fracFracN) then ("--frac-n " +  '"' + fracFracN + '"') else ""} \
      ~{if defined(fracFracR) then ("--frac-r " +  '"' + fracFracR + '"') else ""} \
      ~{if defined(iterIter) then ("--iter " +  '"' + iterIter + '"') else ""} \
      ~{if defined(fracFracLowess) then ("--frac-lowess " +  '"' + fracFracLowess + '"') else ""}
  >>>
}