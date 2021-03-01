version 1.0

task SynapseList {
  input {
    Boolean? recursive
    Boolean? long
    Boolean? modified
    Int syn_one_two_three
  }
  command <<<
    synapse list \
      ~{syn_one_two_three} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (long) then "--long" else ""} \
      ~{if (modified) then "--modified" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    recursive: "recursively list contents of the subtree descending from\\nthe given Synapse ID"
    long: "List synapse entities in long format"
    modified: "List modified by and modified date"
    syn_one_two_three: "Synapse ID of a project or folder"
  }
  output {
    File out_stdout = stdout()
  }
}