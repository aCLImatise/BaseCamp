version 1.0

task FixSimulationStorepl {
  command <<<
    fixSimulationStore_pl
  >>>
  output {
    File out_stdout = stdout()
  }
}