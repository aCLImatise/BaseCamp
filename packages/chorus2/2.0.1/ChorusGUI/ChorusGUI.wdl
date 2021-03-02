version 1.0

task ChorusGUI {
  command <<<
    ChorusGUI
  >>>
  runtime {
    docker: "quay.io/biocontainers/chorus2:2.0.1--py38h0213d0e_0"
  }
  output {
    File out_stdout = stdout()
  }
}