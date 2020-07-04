version 1.0

task PATHOGISTRun {
  input {
    Boolean? new_config
    String config
  }
  command <<<
    PATHOGIST run \
      ~{config} \
      ~{true="--new_config" false="" new_config}
  >>>
  parameter_meta {
    new_config: "write a blank configuration file at path given by CONFIG"
    config: "path to input configuration file, or path to write a new configuration file"
  }
}