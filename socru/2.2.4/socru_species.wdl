version 1.0

task SocruSpecies {
  input {
    Boolean? extended
    Boolean? debug
    Boolean? verbose
  }
  command <<<
    socru_species \
      ~{true="--extended" false="" extended} \
      ~{true="--debug" false="" debug} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    extended: "Extended information about the species databases (default: False)"
    debug: "Turn on debugging (default: False)"
    verbose: "Turn on verbose output (default: False)"
  }
}