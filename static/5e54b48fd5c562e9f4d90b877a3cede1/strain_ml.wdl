version 1.0

task StrainMl {
  input {
    Boolean? options
    String ml_train
    String training_set_files
  }
  command <<<
    strain_ml \
      ~{ml_train} \
      ~{training_set_files} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    options: ""
    ml_train: ""
    training_set_files: ""
  }
}