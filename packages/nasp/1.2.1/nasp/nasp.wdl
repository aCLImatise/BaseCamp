version 1.0

task Nasp {
  input {
    File? config
  }
  command <<<
    nasp \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "Path to the configuration xml file."
  }
  output {
    File out_stdout = stdout()
  }
}