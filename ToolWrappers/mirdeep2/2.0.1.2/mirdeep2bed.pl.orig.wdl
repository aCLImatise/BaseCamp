version 1.0

task Mirdeep2bedplorig {
  command <<<
    mirdeep2bed_pl_orig
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}