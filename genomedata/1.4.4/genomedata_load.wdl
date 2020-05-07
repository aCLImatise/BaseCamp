version 1.0

task GenomedataLoad {
  input {
    Boolean verboseVerbose
    String sequenceSequence
    String tT
    String maskMaskFile
    Boolean assemblyAssembly
    Boolean sizesSizes
    Boolean fileFileMode
    Boolean directoryDirectoryMode
    String? genomeGenomeDataFile
  }
  command <<<
    genomedata-load \
      ~{genomeGenomeDataFile} \
      ~{true="--verbose" false="" verboseVerbose} \
      ~{if defined(sequenceSequence) then ("--sequence " +  '"' + sequenceSequence + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(maskMaskFile) then ("--maskfile " +  '"' + maskMaskFile + '"') else ""} \
      ~{true="--assembly" false="" assemblyAssembly} \
      ~{true="--sizes" false="" sizesSizes} \
      ~{true="--file-mode" false="" fileFileMode} \
      ~{true="--directory-mode" false="" directoryDirectoryMode}
  >>>
}