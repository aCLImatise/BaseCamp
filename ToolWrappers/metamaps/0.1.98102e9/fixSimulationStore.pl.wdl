version 1.0

task FixSimulationStorepl {
  command <<<
    fixSimulationStore_pl
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}