version 1.0

task SeqTrimFastq.py {
  input {
    String? number_trim_left
    String? number_trim_right
  }
  command <<<
    seq_trim_fastq.py \
      ~{if defined(number_trim_left) then ("--left " +  '"' + number_trim_left + '"') else ""} \
      ~{if defined(number_trim_right) then ("--right " +  '"' + number_trim_right + '"') else ""}
  >>>
  parameter_meta {
    number_trim_left: "Number of base pairs to trim from the left."
    number_trim_right: "Number of base pairs to trim from the right."
  }
}