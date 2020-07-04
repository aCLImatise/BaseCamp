version 1.0

task GalaxyWait {
  input {
    String? timeout
    Boolean? verbose
    String? galaxy
    String usage
  }
  command <<<
    galaxy-wait \
      ~{usage} \
      ~{if defined(timeout) then ("--timeout " +  '"' + timeout + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(galaxy) then ("--galaxy " +  '"' + galaxy + '"') else ""}
  >>>
  parameter_meta {
    timeout: "Galaxy startup timeout in seconds. The default value of 0 waits forever"
    verbose: "Increase output verbosity."
    galaxy: "Target Galaxy instance URL/IP address"
    usage: ""
  }
}