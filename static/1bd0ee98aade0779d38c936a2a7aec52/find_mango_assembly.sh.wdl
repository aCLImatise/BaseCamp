version 1.0

task Findmangoassemblysh {
  command <<<
    find_mango_assembly_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}