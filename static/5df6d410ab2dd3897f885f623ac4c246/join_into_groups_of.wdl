version 1.0

task Joinintogroupsof {
  command <<<
    join_into_groups_of
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}