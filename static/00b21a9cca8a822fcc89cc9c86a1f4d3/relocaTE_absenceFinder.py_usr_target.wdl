version 1.0

task RelocaTEAbsenceFinderpyUsrTarget {
  command <<<
    relocaTE_absenceFinder_py usr_target
  >>>
  output {
    File out_stdout = stdout()
  }
}