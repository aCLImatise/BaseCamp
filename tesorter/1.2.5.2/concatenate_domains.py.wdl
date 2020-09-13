version 1.0

task ConcatenateDomainspy {
  command <<<
    concatenate_domains_py
  >>>
  output {
    File out_stdout = stdout()
  }
}