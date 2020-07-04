version 1.0

task AmrfinderUpdate {
  input {
    String? database
    Boolean? quiet
    String? threads
    Boolean? debug
    String? log
  }
  command <<<
    amrfinder_update \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--debug" false="" debug} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    database: ""
    quiet: ""
    threads: ""
    debug: ""
    log: ""
  }
}