version 1.0

task AddgffinfoUnipfile {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info unipfile \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-i, --mapping-file TEXT         Uniprot mapping file  [required]\\n-f, --force-taxon-id            Overwrite taxon_id if already present\\n-m, --mapping [NCBI_TaxID|eggNOG|KO|KEGG|BioCyc|UniPathway|EMBL|EMBL-CDS|GI|STRING]\\nMappings to add  [required]\\n--progress                      Shows Progress Bar\\n--help                          Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}