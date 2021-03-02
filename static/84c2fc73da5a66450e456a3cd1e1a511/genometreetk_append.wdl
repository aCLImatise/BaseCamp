version 1.0

task GenometreetkAppend {
  input {
    Boolean? silent
    String input_tree
    String input_taxonomy
    String output_tree
  }
  command <<<
    genometreetk append \
      ~{input_tree} \
      ~{input_taxonomy} \
      ~{output_tree} \
      ~{if (silent) then "--silent" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    silent: "suppress output"
    input_tree: "input tree to decorate"
    input_taxonomy: "input taxonomy file"
    output_tree: "output tree with taxonomy appended to extant taxon labels"
  }
  output {
    File out_stdout = stdout()
  }
}