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
    docker: "None"
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