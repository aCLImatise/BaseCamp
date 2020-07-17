version 1.0

task Graphmap2 {
  input {
    String tool
  }
  command <<<
    graphmap2 \
      ~{tool}
  >>>
  parameter_meta {
    tool: "STR   Specifies the tool to run: align - the entire GraphMap pipeline. owler - Overlapping With Long Erroneous Reads."
  }
}