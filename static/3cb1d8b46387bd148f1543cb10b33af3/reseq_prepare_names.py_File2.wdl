version 1.0

task ReseqpreparenamespyFile2 {
  input {
    String python
    String re_seq_prepare_names_do_tpy
    Int file_one
    Int file_two
  }
  command <<<
    reseq_prepare_names_py File2 \
      ~{python} \
      ~{re_seq_prepare_names_do_tpy} \
      ~{file_one} \
      ~{file_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    python: ""
    re_seq_prepare_names_do_tpy: ""
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}