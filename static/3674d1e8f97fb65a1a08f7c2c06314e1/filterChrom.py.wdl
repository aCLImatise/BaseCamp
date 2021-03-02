version 1.0

task FilterChrompy {
  command <<<
    filterChrom_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}