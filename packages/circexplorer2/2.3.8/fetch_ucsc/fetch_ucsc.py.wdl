version 1.0

task FetchUcscpy {
  command <<<
    fetch_ucsc_py
  >>>
  output {
    File out_stdout = stdout()
  }
}