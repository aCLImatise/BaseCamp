version 1.0

task NISTParserpy {
  command <<<
    NISTParser_py
  >>>
  output {
    File out_stdout = stdout()
  }
}