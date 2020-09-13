version 1.0

task RelocaTEAbsenceFinderpy {
  command <<<
    relocaTE_absenceFinder_py
  >>>
  output {
    File out_stdout = stdout()
  }
}