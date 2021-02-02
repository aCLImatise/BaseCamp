version 1.0

task AddgffinfoUniprot {
  input {
    Boolean? verbose
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info uniprot \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    verbose: "-c, --email TEXT       Contact email  [required]\\n--buffer INTEGER       Number of annotations to keep in memory  [default:\\n50]\\n-f, --force-taxon-id   Overwrite taxon_id if already present\\n-t, --taxon-id         Add taxonomic ids to annotations, if taxon_id is\\nfound, it won't be Overwritten.\\n-l, --lineage          Add taxonomic lineage to annotations\\n-e, --eggnog           Add eggNOG mappings to annotations\\n-ec, --enzymes         Add EC mappings to annotations\\n-ko, --kegg_orthologs  Add KO mappings to annotations\\n-d, --protein-names    Add Uniprot description\\n-m, --mapping TEXT     Add any DB mappings to annotations\\n--help                 Show this message and exit.\\n"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}