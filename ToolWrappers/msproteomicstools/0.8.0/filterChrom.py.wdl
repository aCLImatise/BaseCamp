version 1.0

task FilterChrompy {
  command <<<
    filterChrom_py
  >>>
  output {
    File out_stdout = stdout()
  }
}