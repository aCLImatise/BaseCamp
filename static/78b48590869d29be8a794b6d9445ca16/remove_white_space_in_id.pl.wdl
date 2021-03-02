version 1.0

task RemoveWhiteSpaceInIdpl {
  command <<<
    remove_white_space_in_id_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}