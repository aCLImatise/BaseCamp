version 1.0

task ArticRampart {
  input {
    Boolean? quiet
    String? protocol_directory
    String? run_directory
  }
  command <<<
    artic rampart \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(protocol_directory) then ("--protocol-directory " +  '"' + protocol_directory + '"') else ""} \
      ~{if defined(run_directory) then ("--run-directory " +  '"' + run_directory + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Do not output warnings to stderr"
    protocol_directory: "The RAMPART protocols directory."
    run_directory: "The run directory"
  }
}