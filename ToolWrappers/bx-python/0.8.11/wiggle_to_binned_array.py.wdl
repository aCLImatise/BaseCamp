version 1.0

task WiggleToBinnedArraypy {
  input {
    String? comp
    String score_file
    String out_file
  }
  command <<<
    wiggle_to_binned_array_py \
      ~{score_file} \
      ~{out_file} \
      ~{if defined(comp) then ("--comp " +  '"' + comp + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bx-python:0.8.11--py36h5e0341f_0"
  }
  parameter_meta {
    comp: "compression type (none, zlib, lzo)"
    score_file: ""
    out_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}