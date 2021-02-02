version 1.0

task GenVmoptionssh {
  command <<<
    gen_vmoptions_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}