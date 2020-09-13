version 1.0

task Findadamassemblysh {
  command <<<
    find_adam_assembly_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}