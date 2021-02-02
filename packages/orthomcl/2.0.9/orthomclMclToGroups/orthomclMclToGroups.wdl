version 1.0

task OrthomclMclToGroups {
  input {
    String prefix
    String starting_id_num
  }
  command <<<
    orthomclMclToGroups \
      ~{prefix} \
      ~{starting_id_num}
  >>>
  parameter_meta {
    prefix: "a prefix to use when generating group ids.  For example OG2_"
    starting_id_num: "a number to start the id generating with.  For example 1000"
  }
  output {
    File out_stdout = stdout()
  }
}