version 1.0

task SnaptoolsAlignPairedEnd {
  input {
    String inputInputReference
    String inputInputFastq1
    String inputInputFastq2
    String outputOutputBam
    String alignerAligner
    File pathPathToAligner
    Array[String]+ alignerAlignerOptions
    String readReadFastQCommand
    Int minMinCov
    String numNumThreads
    String ifIfSort
    String tmpTmpFolder
    String overwriteOverwrite
    String verboseVerbose
  }
  command <<<
    snaptools align-paired-end \
      ~{if defined(inputInputReference) then ("--input-reference " +  '"' + inputInputReference + '"') else ""} \
      ~{if defined(inputInputFastq1) then ("--input-fastq1 " +  '"' + inputInputFastq1 + '"') else ""} \
      ~{if defined(inputInputFastq2) then ("--input-fastq2 " +  '"' + inputInputFastq2 + '"') else ""} \
      ~{if defined(outputOutputBam) then ("--output-bam " +  '"' + outputOutputBam + '"') else ""} \
      ~{if defined(alignerAligner) then ("--aligner " +  '"' + alignerAligner + '"') else ""} \
      ~{if defined(pathPathToAligner) then ("--path-to-aligner " +  '"' + pathPathToAligner + '"') else ""} \
      ~{if defined(alignerAlignerOptions) then ("--aligner-options " +  '"' + alignerAlignerOptions + '"') else ""} \
      ~{if defined(readReadFastQCommand) then ("--read-fastq-command " +  '"' + readReadFastQCommand + '"') else ""} \
      ~{if defined(minMinCov) then ("--min-cov " +  '"' + minMinCov + '"') else ""} \
      ~{if defined(numNumThreads) then ("--num-threads " +  '"' + numNumThreads + '"') else ""} \
      ~{if defined(ifIfSort) then ("--if-sort " +  '"' + ifIfSort + '"') else ""} \
      ~{if defined(tmpTmpFolder) then ("--tmp-folder " +  '"' + tmpTmpFolder + '"') else ""} \
      ~{if defined(overwriteOverwrite) then ("--overwrite " +  '"' + overwriteOverwrite + '"') else ""} \
      ~{if defined(verboseVerbose) then ("--verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}