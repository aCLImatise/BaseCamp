version 1.0

task FilterComponentspyInfile {
  command <<<
    filter_components_py infile
  >>>
  output {
    File out_stdout = stdout()
  }
}