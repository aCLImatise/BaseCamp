version 1.0

task RNARedPrintStructurepy {
  command <<<
    RNARedPrintStructure_py
  >>>
  output {
    File out_stdout = stdout()
  }
}