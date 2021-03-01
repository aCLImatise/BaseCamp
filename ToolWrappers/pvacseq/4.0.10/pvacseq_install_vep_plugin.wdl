version 1.0

task PvacseqInstallVepPlugin {
  input {
    String vep_plugins_path
  }
  command <<<
    pvacseq install_vep_plugin \
      ~{vep_plugins_path}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    vep_plugins_path: "Path to your VEP_plugins directory"
  }
  output {
    File out_stdout = stdout()
  }
}