version 1.0

task Bowtiealignreadspy {
  input {
    String fast_an
  }
  command <<<
    bowtie_align_reads_py \
      ~{fast_an}
  >>>
  parameter_meta {
    fast_an: ""
  }
  output {
    File out_stdout = stdout()
  }
}