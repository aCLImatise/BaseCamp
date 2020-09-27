version 1.0

task AugurRefine {
  input {
    String? tree
    String? alignment
  }
  command <<<
    augur refine \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""}
  >>>
  parameter_meta {
    tree: ""
    alignment: ""
  }
  output {
    File out_stdout = stdout()
  }
}