version 1.0

task FixUnitigssh {
  command <<<
    fix_unitigs_sh
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}