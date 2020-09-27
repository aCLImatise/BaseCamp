version 1.0

task TransformBiompy {
  input {
    String? i
  }
  command <<<
    transform_biom_py \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
  }
  output {
    File out_stdout = stdout()
  }
}