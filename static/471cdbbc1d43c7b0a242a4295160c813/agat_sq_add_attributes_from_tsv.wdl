version 1.0

task AgatSqAddAttributesFromTsv.pl {
  input {
    Boolean? gff
    Boolean? tsv
    Boolean? csv
    String? verbose
    String? string_output_file
  }
  command <<<
    agat_sq_add_attributes_from_tsv.pl \
      ~{true="--gff" false="" gff} \
      ~{true="--tsv" false="" tsv} \
      ~{true="--csv" false="" csv} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(string_output_file) then ("--output " +  '"' + string_output_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "STRING: Input GTF/GFF file."
    tsv: "STRING: Input tsv file"
    csv: "BOLEAN: Inform the script that the tsv input file is actually a csv (coma-separated)."
    verbose: "BOLEAN: Add verbosity"
    string_output_file: "STRING: Output file. If no output file is specified, the output will be written to STDOUT. The result is in tabulate format."
  }
}