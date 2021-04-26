version 1.0

task RgiDatabase {
  input {
    Boolean? local
    Boolean? all
    Boolean? v
  }
  command <<<
    rgi database \
      ~{if (local) then "--local" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/rgi:5.2.0--pyhdfd78af_0"
  }
  parameter_meta {
    local: "use local database (default: uses database in executable\\ndirectory)"
    all: "data version number used for `rgi bwt` and `rgi main`\\n(default: rgi main)\\n"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}