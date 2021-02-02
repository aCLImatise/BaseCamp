version 1.0

task MglexcliBuildmatrix {
  input {
    File? seeds
    File? identifiers
    Boolean? v
    String build_matrix
  }
  command <<<
    mglex_cli buildmatrix \
      ~{build_matrix} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(identifiers) then ("--identifiers " +  '"' + identifiers + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    seeds: "Space-separated sequence identifier per line"
    identifiers: "Sequence identifiers; one per line; default standard input"
    v: ""
    build_matrix: ""
  }
  output {
    File out_stdout = stdout()
  }
}