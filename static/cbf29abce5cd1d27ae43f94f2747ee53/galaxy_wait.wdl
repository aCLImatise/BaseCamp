version 1.0

task Galaxywait {
  input {
    Int? timeout
    Boolean? verbose
    String? galaxy
    String usage
  }
  command <<<
    galaxy_wait \
      ~{usage} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""}
  >>>
  parameter_meta {
    timeout: "Galaxy startup timeout in seconds. The default value\\nof 0 waits forever"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address\\n"
    usage: ""
  }
  output {
    File out_stdout = stdout()
  }
}