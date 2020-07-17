version 1.0

task ImportIgenome {
  input {
    File? path
    String? genome
    String? config
  }
  command <<<
    import_igenome \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    path: "path to the desired genome tarball or directory to integrate"
    genome: "name to be assigned to the selected genome"
    config: "path to local genome configuration file. Optional if 'REFGENIE' environment variable is set."
  }
}