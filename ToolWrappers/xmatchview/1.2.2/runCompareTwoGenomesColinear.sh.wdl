version 1.0

task RunCompareTwoGenomesColinearsh {
  command <<<
    runCompareTwoGenomesColinear_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}