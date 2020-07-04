version 1.0

task AbbaBaba {
  input {
    String? tree
  }
  command <<<
    abba-baba \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    tree: ",B,C,D"
  }
}