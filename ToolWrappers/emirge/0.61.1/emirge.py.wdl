version 1.0

task Emirgepy {
  command <<<
    emirge_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}