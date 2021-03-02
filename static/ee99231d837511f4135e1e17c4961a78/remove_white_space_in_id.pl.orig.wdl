version 1.0

task RemoveWhiteSpaceInIdplorig {
  command <<<
    remove_white_space_in_id_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}