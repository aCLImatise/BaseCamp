version 1.0

task ConcatenateDomainspy {
  command <<<
    concatenate_domains_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}