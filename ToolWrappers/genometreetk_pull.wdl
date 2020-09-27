version 1.0

task GenometreetkPull {
  input {
    Boolean? no_validation
    Boolean? silent
    String input_tree
    String output_taxonomy
  }
  command <<<
    genometreetk pull \
      ~{input_tree} \
      ~{output_taxonomy} \
      ~{if (no_validation) then "--no_validation" else ""} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    no_validation: "do not assume decorated nodes adhear to standard taxonomy"
    silent: "suppress output"
    input_tree: "decorated tree"
    output_taxonomy: "output taxonomy file"
  }
  output {
    File out_stdout = stdout()
  }
}