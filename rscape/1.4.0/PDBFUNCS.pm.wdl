version 1.0

task PDBFUNCSpm {
  command <<<
    PDBFUNCS_pm
  >>>
  output {
    File out_stdout = stdout()
  }
}