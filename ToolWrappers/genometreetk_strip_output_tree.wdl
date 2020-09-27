version 1.0

task GenometreetkStripOutputTree {
  input {
    Boolean? silent
    String genome_tree_tk
    String strip
    String input_tree
    String output_tree
  }
  command <<<
    genometreetk strip output_tree \
      ~{genome_tree_tk} \
      ~{strip} \
      ~{input_tree} \
      ~{output_tree} \
      ~{if (silent) then "--silent" else ""}
  >>>
  parameter_meta {
    silent: ""
    genome_tree_tk: ""
    strip: ""
    input_tree: ""
    output_tree: ""
  }
  output {
    File out_stdout = stdout()
  }
}