version 1.0

task FastqTimeSlice.py {
  input {
    String tT
    String sS
    String eE
    String? inputInputFastQ
    String? outputOutputFastQ
  }
  command <<<
    fastq_time_slice.py \
      ~{inputInputFastQ} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{outputOutputFastQ}
  >>>
}