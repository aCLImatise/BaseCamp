version 1.0

task MakeHicArraypl {
  command <<<
    make_hic_array_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}