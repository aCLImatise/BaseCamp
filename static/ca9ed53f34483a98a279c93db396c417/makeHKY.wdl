version 1.0

task MakeHKY {
  input {
    String? branch_length
    String? tree
    String kappa
  }
  command <<<
    makeHKY \
      ~{kappa} \
      ~{if defined(branch_length) then ("--branch-length " +  '"' + branch_length + '"') else ""} \
      ~{if defined(tree) then ("--tree " +  '"' + tree + '"') else ""}
  >>>
  parameter_meta {
    branch_length: "Assume a tree consisting of a single branch of specified length. Default value is 1."
    tree: "Override --branch-length and use specified tree."
    kappa: ""
  }
}