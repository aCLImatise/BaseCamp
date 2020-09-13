version 1.0

task GetBesthitMafpy {
  command <<<
    get_besthit_maf_py
  >>>
  output {
    File out_stdout = stdout()
  }
}