version 1.0

task Obtautomer {
  input {
    Boolean? canonical_tautomer_only
    File filename
  }
  command <<<
    obtautomer \
      ~{filename} \
      ~{if (canonical_tautomer_only) then "-c" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    canonical_tautomer_only: ": Canonical tautomer only"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}