version 1.0

task MakeHKY {
  input {
    String branchBranchLength
    String treeTree
  }
  command <<<
    makeHKY \
      ~{if defined(branchBranchLength) then ("--branch-length " +  '"' + branchBranchLength + '"') else ""} \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""}
  >>>
}