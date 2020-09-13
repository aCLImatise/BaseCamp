version 1.0

task GraphSimplificationpy {
  input {
    String? l
  }
  command <<<
    graph_simplification_py \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""}
  >>>
  parameter_meta {
    l: ""
  }
  output {
    File out_stdout = stdout()
  }
}