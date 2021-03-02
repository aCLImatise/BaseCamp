version 1.0

task ReseqpreparenamespyFile1 {
  input {
    Int file_two
  }
  command <<<
    reseq_prepare_names_py File1 \
      ~{file_two}
  >>>
  runtime {
    docker: "quay.io/biocontainers/reseq:1.1--py38h56fca86_0"
  }
  parameter_meta {
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}