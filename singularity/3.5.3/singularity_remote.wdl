version 1.0

task SingularityRemote {
  input {
    File? config
  }
  command <<<
    singularity remote \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    config: "path to the file holding remote endpoint\\nconfigurations (default\\n\\\"/root/.singularity/remote.yaml\\\")"
  }
  output {
    File out_stdout = stdout()
  }
}