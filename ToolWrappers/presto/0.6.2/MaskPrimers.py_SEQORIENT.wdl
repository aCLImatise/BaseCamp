version 1.0

task MaskPrimerspySEQORIENT {
  input {
    String mask_primers_do_tpy
  }
  command <<<
    MaskPrimers_py SEQORIENT \
      ~{mask_primers_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/presto:0.6.2--py_0"
  }
  parameter_meta {
    mask_primers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}