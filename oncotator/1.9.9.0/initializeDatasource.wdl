version 1.0

task InitializeDatasource {
  input {
    Boolean? ds_type
  }
  command <<<
    initializeDatasource \
      ~{true="--ds_type" false="" ds_type}
  >>>
  parameter_meta {
    ds_type: ""
  }
}