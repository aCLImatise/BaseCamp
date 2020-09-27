version 1.0

task TaxonutilsLcaLine {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    taxon_utils lca_line \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-t, --taxonomy TEXT    Taxonomy file  [required]\\n-n, --no-lca FILENAME  File to which write records with no LCA\\n-a, --only-ranked      If set, only taxa that have a rank will be used in\\nthe lineageself. This is not advised for lineages\\nsuch as Viruses, where the top levels have no rank\\n-s, --separator TEXT   separator for taxon_ids (defaults to TAB)\\n--help                 Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}