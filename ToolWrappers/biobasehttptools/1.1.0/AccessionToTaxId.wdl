version 1.0

task AccessionToTaxId {
  input {
    Int? accession
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    AccessionToTaxId \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    accession: "NCBI accession number, e.g NC_000913"
    verbose: "Loud verbosity"
    quiet: "Quiet verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}