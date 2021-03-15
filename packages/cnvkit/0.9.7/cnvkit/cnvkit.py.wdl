version 1.0

task Cnvkitpy {
  command <<<
    cnvkit_py
  >>>
  output {
    File out_stdout = stdout()
  }
}