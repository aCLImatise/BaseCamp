version 1.0

task Graphmap2 {
  input {
    String tool
  }
  command <<<
    graphmap2 \
      ~{tool}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tool: "STR   Specifies the tool to run:\\nalign - the entire GraphMap pipeline.\\nowler - Overlapping With Long Erroneous Reads.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}