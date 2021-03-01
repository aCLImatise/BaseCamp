version 1.0

task DeepacTrain {
  input {
    Boolean? sensitive
    Boolean? rapid
    File? custom
    Int? n_cpus
    Array[String] gpus
    File? train_data
    File? train_labels
    File? val_data
    File? val_labels
    String? run_name
  }
  command <<<
    deepac train \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (rapid) then "--rapid" else ""} \
      ~{if defined(custom) then ("--custom " +  '"' + custom + '"') else ""} \
      ~{if defined(n_cpus) then ("--n-cpus " +  '"' + n_cpus + '"') else ""} \
      ~{if defined(gpus) then ("--gpus " +  '"' + gpus + '"') else ""} \
      ~{if defined(train_data) then ("--train-data " +  '"' + train_data + '"') else ""} \
      ~{if defined(train_labels) then ("--train-labels " +  '"' + train_labels + '"') else ""} \
      ~{if defined(val_data) then ("--val-data " +  '"' + val_data + '"') else ""} \
      ~{if defined(val_labels) then ("--val-labels " +  '"' + val_labels + '"') else ""} \
      ~{if defined(run_name) then ("--run-name " +  '"' + run_name + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepac:0.13.6--py_0"
  }
  parameter_meta {
    sensitive: "Use the sensitive model."
    rapid: "Use the rapid CNN model."
    custom: "Use the user-supplied configuration file."
    n_cpus: "Number of CPU cores. Default: all."
    gpus: "GPU devices to use (comma-separated). Default: all"
    train_data: "Path to training data."
    train_labels: "Path to training labels."
    val_data: "Path to validation data."
    val_labels: "Path to validation labels."
    run_name: "Run name (default: based on chosen config).\\n"
  }
  output {
    File out_stdout = stdout()
  }
}