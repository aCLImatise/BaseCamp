version 1.0

task SocruSpecies {
  input {
    Boolean? extended
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    socru_species \
      ~{if (extended) then "--extended" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    extended: "Extended information about the species databases (default:\\nFalse)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
  }
  output {
    File out_stdout = stdout()
  }
}