version 1.0

task Joinintogroupsof {
  command <<<
    join_into_groups_of
  >>>
  output {
    File out_stdout = stdout()
  }
}