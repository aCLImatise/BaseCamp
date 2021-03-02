version 1.0

task InterleavefastqgzMITOBIMpy {
  input {
    String interleave_fast_a
    Int fast_a_file_one
  }
  command <<<
    interleave_fastqgz_MITOBIM_py \
      ~{interleave_fast_a} \
      ~{fast_a_file_one}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitobim:1.9.1--0"
  }
  parameter_meta {
    interleave_fast_a: ""
    fast_a_file_one: ""
  }
  output {
    File out_stdout = stdout()
  }
}