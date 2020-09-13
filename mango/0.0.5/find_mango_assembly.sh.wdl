version 1.0

task Findmangoassemblysh {
  command <<<
    find_mango_assembly_sh
  >>>
  output {
    File out_stdout = stdout()
  }
}