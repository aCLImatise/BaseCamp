version 1.0

task MakeOldMutationStringspy {
  command <<<
    makeOldMutationStrings_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}