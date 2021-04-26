version 1.0

task RgiClean {
  input {
    Boolean? local
    Boolean? debug
  }
  command <<<
    rgi clean \
      ~{if (local) then "--local" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    local: "use local database (default: uses database in executable\\ndirectory)"
    debug: "debug mode"
  }
  output {
    File out_stdout = stdout()
  }
}