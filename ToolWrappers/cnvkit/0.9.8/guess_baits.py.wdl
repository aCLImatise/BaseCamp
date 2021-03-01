version 1.0

task GuessBaitspy {
  command <<<
    guess_baits_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/cnvkit:0.9.8--py_0"
  }
  output {
    File out_stdout = stdout()
  }
}