version 1.0

task ParsecUtilsWaitOnInvocation {
  input {
    Boolean? exit_early
    Float? back_off_min
    Float? back_off_max
    String unknown
  }
  command <<<
    parsec utils wait_on_invocation \
      ~{unknown} \
      ~{if (exit_early) then "--exit_early" else ""} \
      ~{if defined(back_off_min) then ("--backoff_min " +  '"' + back_off_min + '"') else ""} \
      ~{if defined(back_off_max) then ("--backoff_max " +  '"' + back_off_max + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    exit_early: "Exit immediately after checking status rather than\\nsleeping indefinitely"
    back_off_min: "Minimum time to sleep between checks, in seconds."
    back_off_max: "Maximum time to sleep between checks, in seconds"
    unknown: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}