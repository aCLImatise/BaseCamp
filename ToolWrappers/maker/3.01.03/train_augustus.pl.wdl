version 1.0

task TrainAugustuspl {
  input {
    String cpus
    Int max
  }
  command <<<
    train_augustus_pl \
      ~{cpus} \
      ~{max}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    cpus: "<INT>    Number of CPUs to use for training"
    max: "<INT>    Maximum models to use for optimization"
  }
  output {
    File out_stdout = stdout()
  }
}