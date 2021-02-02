version 1.0

task MakeOldMutationStringspy {
  command <<<
    makeOldMutationStrings_py
  >>>
  output {
    File out_stdout = stdout()
  }
}