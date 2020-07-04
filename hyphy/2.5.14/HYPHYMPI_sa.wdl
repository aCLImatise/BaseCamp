version 1.0

task HYPHYMPISa {
  input {
    String fprintfstdout
    String branch_under_condition
    String treenodes
    String additionorder
  }
  command <<<
    HYPHYMPI sa \
      ~{fprintfstdout} \
      ~{branch_under_condition} \
      ~{treenodes} \
      ~{additionorder}
  >>>
  parameter_meta {
    fprintfstdout: "fprintf(stdout, \"Input file contained 3 or fewer sequences - not much inference to be done!\n\");"
    branch_under_condition: "Branch under condition 'randomOption==1'"
    treenodes: "treeNodes={filteredData.species,1};"
    additionorder: "additionOrder={filteredData.species,1};"
  }
}