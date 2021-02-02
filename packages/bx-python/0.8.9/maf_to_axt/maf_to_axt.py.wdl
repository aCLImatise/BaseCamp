version 1.0

task MafToAxtpy {
  command <<<
    maf_to_axt_py
  >>>
  output {
    File out_stdout = stdout()
  }
}