version 1.0

task Fastqmd5 {
  input {
    String cat
    String reads_dot_fast_q
  }
  command <<<
    fastqmd5 \
      ~{cat} \
      ~{reads_dot_fast_q}
  >>>
  runtime {
    docker: "quay.io/biocontainers/quip:1.1.8--hed695b0_0"
  }
  parameter_meta {
    cat: ""
    reads_dot_fast_q: ""
  }
  output {
    File out_stdout = stdout()
  }
}