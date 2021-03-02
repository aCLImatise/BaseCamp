version 1.0

task Phigarosetup {
  input {
    File? config
    Directory? pv_og
    Boolean? force
    Boolean? no_updated_b
  }
  command <<<
    phigaro_setup \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(pv_og) then ("--pvog " +  '"' + pv_og + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (no_updated_b) then "--no-updatedb" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/phigaro:2.3.0--pyh7b7c402_1"
  }
  parameter_meta {
    config: "Path to a config.yml, default is\\n/root/.phigaro/config.yml (default:\\n/root/.phigaro/config.yml)"
    pv_og: "pvogs directory, default is /root/.phigaro/pvog\\n(default: /root/.phigaro/pvog)"
    force: "Force configuration and rewrite config.yml if exists\\n(default: False)"
    no_updated_b: "Do not run sudo updatedb (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}