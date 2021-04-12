version 1.0

task GappaToolsLicense {
  input {
    Boolean? full
  }
  command <<<
    gappa tools license \
      ~{if (full) then "--full" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gappa:0.7.1--he513fc3_0"
  }
  parameter_meta {
    full: "If set, show the full license instead of the short boilerplate."
  }
  output {
    File out_stdout = stdout()
  }
}