version 1.0

task ChorusGUI {
  command <<<
    ChorusGUI
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.01--py37hf01694f_0"
  }
  output {
    File out_stdout = stdout()
  }
}