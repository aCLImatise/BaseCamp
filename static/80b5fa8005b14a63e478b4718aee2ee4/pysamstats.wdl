version 1.0

task Pysamstats {
  input {
    String typeType
    String chromosomeChromosome
    String startStart
    String endEnd
    Boolean zeroZeroBased
    Boolean truncateTruncate
    String stepperStepper
    Boolean padPad
    Int maxMaxDepth
    String fastFastA
    Boolean omitOmitHeader
    String progressProgress
    String windowWindowSize
    String windowWindowOffset
    String formatFormat
    String outputOutput
    String fieldsFields
    String hdf5Hdf5Group
    String hdf5Hdf5Dataset
    String hdf5Hdf5CompLib
    String hdf5Hdf5CompLevel
    String hdf5Hdf5Chunksize
    Int minMinMapq
    Int minMinBaseQ
    Boolean noNoDup
    Boolean noNoDel
    File? fileFile
  }
  command <<<
    pysamstats \
      ~{fileFile} \
      ~{if defined(typeType) then ("--type " +  '"' + typeType + '"') else ""} \
      ~{if defined(chromosomeChromosome) then ("--chromosome " +  '"' + chromosomeChromosome + '"') else ""} \
      ~{if defined(startStart) then ("--start " +  '"' + startStart + '"') else ""} \
      ~{if defined(endEnd) then ("--end " +  '"' + endEnd + '"') else ""} \
      ~{true="--zero-based" false="" zeroZeroBased} \
      ~{true="--truncate" false="" truncateTruncate} \
      ~{if defined(stepperStepper) then ("--stepper " +  '"' + stepperStepper + '"') else ""} \
      ~{true="--pad" false="" padPad} \
      ~{if defined(maxMaxDepth) then ("--max-depth " +  '"' + maxMaxDepth + '"') else ""} \
      ~{if defined(fastFastA) then ("--fasta " +  '"' + fastFastA + '"') else ""} \
      ~{true="--omit-header" false="" omitOmitHeader} \
      ~{if defined(progressProgress) then ("--progress " +  '"' + progressProgress + '"') else ""} \
      ~{if defined(windowWindowSize) then ("--window-size " +  '"' + windowWindowSize + '"') else ""} \
      ~{if defined(windowWindowOffset) then ("--window-offset " +  '"' + windowWindowOffset + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(fieldsFields) then ("--fields " +  '"' + fieldsFields + '"') else ""} \
      ~{if defined(hdf5Hdf5Group) then ("--hdf5-group " +  '"' + hdf5Hdf5Group + '"') else ""} \
      ~{if defined(hdf5Hdf5Dataset) then ("--hdf5-dataset " +  '"' + hdf5Hdf5Dataset + '"') else ""} \
      ~{if defined(hdf5Hdf5CompLib) then ("--hdf5-complib " +  '"' + hdf5Hdf5CompLib + '"') else ""} \
      ~{if defined(hdf5Hdf5CompLevel) then ("--hdf5-complevel " +  '"' + hdf5Hdf5CompLevel + '"') else ""} \
      ~{if defined(hdf5Hdf5Chunksize) then ("--hdf5-chunksize " +  '"' + hdf5Hdf5Chunksize + '"') else ""} \
      ~{if defined(minMinMapq) then ("--min-mapq " +  '"' + minMinMapq + '"') else ""} \
      ~{if defined(minMinBaseQ) then ("--min-baseq " +  '"' + minMinBaseQ + '"') else ""} \
      ~{true="--no-dup" false="" noNoDup} \
      ~{true="--no-del" false="" noNoDel}
  >>>
}