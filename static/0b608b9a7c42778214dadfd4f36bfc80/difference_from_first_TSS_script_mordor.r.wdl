version 1.0

task DifferenceFromFirstTSSScriptMordorr {
  command <<<
    difference_from_first_TSS_script_mordor_r
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}