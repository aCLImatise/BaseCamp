version 1.0

task RunSeqtoolspy {
  input {
    Boolean? in_file
    File? outfile
    Boolean? in_format
    File? out_format
    String? mask_sites
    String? filter_fragments
    String removed
  }
  command <<<
    run_seqtools_py \
      ~{removed} \
      ~{if (in_file) then "-infile" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (in_format) then "-informat" else ""} \
      ~{if (out_format) then "-outformat" else ""} \
      ~{if defined(mask_sites) then ("-masksites " +  '"' + mask_sites + '"') else ""} \
      ~{if defined(filter_fragments) then ("-filterfragments " +  '"' + filter_fragments + '"') else ""}
  >>>
  parameter_meta {
    in_file: "[INFILE]      name of the input file (default: standard input)"
    outfile: "[OUTFILE]    name of the output file (default: standard output)"
    in_format: "[{COMPACT3,FASTA}]\\nformat of the input file (default: FASTA)"
    out_format: "[{COMPACT3,FASTA,PHYLIP}]\\nformat of the output file (default: FASTA)"
    mask_sites: "sites with less than N non-gap characters will be\\nmasked out"
    filter_fragments: "sequences with less than N non-gap sequences will be"
    removed: "-rename MappingFile   Rename sequences, according to the mapping file"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_out_format = "${in_out_format}"
  }
}