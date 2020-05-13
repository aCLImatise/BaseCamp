version 1.0

task SeqTrimFastq.py {
  input {
    String leftLeft
    String rightRight
  }
  command <<<
    seq_trim_fastq.py \
      ~{if defined(leftLeft) then ("--left " +  '"' + leftLeft + '"') else ""} \
      ~{if defined(rightRight) then ("--right " +  '"' + rightRight + '"') else ""}
  >>>
}