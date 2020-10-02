version 1.0

task AddgffinfoPfam {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info pfam \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-i, --id-attr TEXT   In which attribute the Pfam ID/ACCESSION is stored\\n(defaults to *gene_id*)\\n-a, --use-accession  If used, the attribute value is the Pfam ACCESSION\\n(e.g. PF06894), not ID (e.g. Phage_TAC_2)\\n--help               Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}