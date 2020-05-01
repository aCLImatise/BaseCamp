version 1.0

task TrimReads.py {
  input {
    String inputInput
    String trimTrimSize
    Int finalFinalSize
    String trimTrimEnd
    Boolean trimTrimN
    String outputOutput
  }
  command <<<
    trim_reads.py \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(trimTrimSize) then ("--trim_size " +  '"' + trimTrimSize + '"') else ""} \
      ~{if defined(finalFinalSize) then ("--final_size " +  '"' + finalFinalSize + '"') else ""} \
      ~{if defined(trimTrimEnd) then ("--trim_end " +  '"' + trimTrimEnd + '"') else ""} \
      ~{true="--trim_n" false="" trimTrimN} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}