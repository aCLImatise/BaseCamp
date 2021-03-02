version 1.0

task PATHOGISTRun {
  input {
    Boolean? new_config
    String config
  }
  command <<<
    PATHOGIST run \
      ~{config} \
      ~{if (new_config) then "--new_config" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    new_config: "write a blank configuration file at path given by CONFIG"
    config: "path to input configuration file, or path to write a new\\nconfiguration file"
  }
  output {
    File out_stdout = stdout()
  }
}