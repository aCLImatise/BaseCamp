version 1.0

task FetchUcscpy {
  command <<<
    fetch_ucsc_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}