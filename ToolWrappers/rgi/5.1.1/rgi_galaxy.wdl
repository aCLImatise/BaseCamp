version 1.0

task RgiGalaxy {
  input {
    File? galaxy_database
    Boolean? debug
  }
  command <<<
    rgi galaxy \
      ~{if defined(galaxy_database) then ("--galaxy_database " +  '"' + galaxy_database + '"') else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    galaxy_database: "path to CARD data and blast databases"
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
  }
}