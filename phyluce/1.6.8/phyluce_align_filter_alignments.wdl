version 1.0

task PhyluceAlignFilterAlignments {
  input {
    String alignmentsAlignments
    String outputOutput
    String inputInputFormat
    Array[String]+ containingContainingDataFor
    Int minMinLength
    Int minMinTaxA
    String verbosityVerbosity
    String logLogPath
  }
  command <<<
    phyluce_align_filter_alignments \
      ~{if defined(alignmentsAlignments) then ("--alignments " +  '"' + alignmentsAlignments + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(inputInputFormat) then ("--input-format " +  '"' + inputInputFormat + '"') else ""} \
      ~{if defined(containingContainingDataFor) then ("--containing-data-for " +  '"' + containingContainingDataFor + '"') else ""} \
      ~{if defined(minMinLength) then ("--min-length " +  '"' + minMinLength + '"') else ""} \
      ~{if defined(minMinTaxA) then ("--min-taxa " +  '"' + minMinTaxA + '"') else ""} \
      ~{if defined(verbosityVerbosity) then ("--verbosity " +  '"' + verbosityVerbosity + '"') else ""} \
      ~{if defined(logLogPath) then ("--log-path " +  '"' + logLogPath + '"') else ""}
  >>>
}