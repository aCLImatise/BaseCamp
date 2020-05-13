version 1.0

task DimspyAlignSamples {
  input {
    String inputInput
    String outputOutput
    String ppmPpm
    File fileFileList
    String blockBlockSize
    String nNCpus
  }
  command <<<
    dimspy align-samples \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(ppmPpm) then ("--ppm " +  '"' + ppmPpm + '"') else ""} \
      ~{if defined(fileFileList) then ("--filelist " +  '"' + fileFileList + '"') else ""} \
      ~{if defined(blockBlockSize) then ("--block-size " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(nNCpus) then ("--ncpus " +  '"' + nNCpus + '"') else ""}
  >>>
}