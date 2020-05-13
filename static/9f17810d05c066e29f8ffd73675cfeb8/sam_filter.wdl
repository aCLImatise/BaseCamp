version 1.0

task SamFilter.py {
  input {
    String inputInputFile
    Int minMinAlignScore
    Boolean verboseVerbose
  }
  command <<<
    sam_filter.py \
      ~{if defined(inputInputFile) then ("--input_file " +  '"' + inputInputFile + '"') else ""} \
      ~{if defined(minMinAlignScore) then ("--min_align_score " +  '"' + minMinAlignScore + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}