version 1.0

task Makerepeatfile {
  command <<<
    make_repeat_file
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}