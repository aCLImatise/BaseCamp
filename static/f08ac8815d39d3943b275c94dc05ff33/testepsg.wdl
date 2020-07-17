version 1.0

task Testepsg {
  input {
    Boolean? transform_coordinate_target
  }
  command <<<
    testepsg \
      ~{true="-t" false="" transform_coordinate_target}
  >>>
  parameter_meta {
    transform_coordinate_target: ": transform a coordinate from source GCS/PCS to target GCS/PCS"
  }
}