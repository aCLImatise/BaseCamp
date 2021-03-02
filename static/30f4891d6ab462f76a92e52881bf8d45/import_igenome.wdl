version 1.0

task ImportIgenome {
  input {
    File? path
    File? config
    String? g
    String integrate
  }
  command <<<
    import_igenome \
      ~{integrate} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    path: "path to the desired genome tarball or directory to"
    config: "path to local genome configuration file. Optional if\\n'REFGENIE' environment variable is set.\\n"
    g: ""
    integrate: "-g GENOME, --genome GENOME"
  }
  output {
    File out_stdout = stdout()
  }
}