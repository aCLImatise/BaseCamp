version 1.0

task SeqTrimFastqpy {
  input {
    Int? number_base_left
    Int? number_base_right
  }
  command <<<
    seq_trim_fastq_py \
      ~{if defined(number_base_left) then ("--left " +  '"' + number_base_left + '"') else ""} \
      ~{if defined(number_base_right) then ("--right " +  '"' + number_base_right + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    number_base_left: "Number of base pairs to trim from the left."
    number_base_right: "Number of base pairs to trim from the right."
  }
  output {
    File out_stdout = stdout()
  }
}