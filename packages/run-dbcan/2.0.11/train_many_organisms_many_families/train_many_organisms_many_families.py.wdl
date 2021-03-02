version 1.0

task TrainManyOrganismsManyFamiliespy {
  command <<<
    train_many_organisms_many_families_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/run-dbcan:2.0.11--pyh3252c3a_0"
  }
  output {
    File out_stdout = stdout()
  }
}