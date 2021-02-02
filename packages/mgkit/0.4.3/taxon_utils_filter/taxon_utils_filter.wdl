version 1.0

task TaxonutilsFilter {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    taxon_utils filter \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-p, --table\\n-t, --taxonomy TEXT             Taxonomy file  [required]\\n-i, --include-taxon-id INTEGER  Include only taxon_ids\\n-in, --include-taxon-name TEXT  Include only taxon_names\\n-e, --exclude-taxon-id INTEGER  Exclude taxon_ids\\n-en, --exclude-taxon-name TEXT  Exclude taxon_names\\n--progress                      Shows Progress Bar\\n--help                          Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}