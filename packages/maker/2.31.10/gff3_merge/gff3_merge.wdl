version 1.0

task Gff3Merge {
  input {
    File? location_maker_datastore
    String? base_name_output
    String? stdout_for_output
    File? write_gene_models
    String? print_fasta_sequence
    String? legacy_annotation_sets
  }
  command <<<
    gff3_merge \
      ~{if defined(location_maker_datastore) then ("-d " +  '"' + location_maker_datastore + '"') else ""} \
      ~{if defined(base_name_output) then ("-o " +  '"' + base_name_output + '"') else ""} \
      ~{if defined(stdout_for_output) then ("-s " +  '"' + stdout_for_output + '"') else ""} \
      ~{if defined(write_gene_models) then ("-g " +  '"' + write_gene_models + '"') else ""} \
      ~{if defined(print_fasta_sequence) then ("-n " +  '"' + print_fasta_sequence + '"') else ""} \
      ~{if defined(legacy_annotation_sets) then ("-l " +  '"' + legacy_annotation_sets + '"') else ""}
  >>>
  parameter_meta {
    location_maker_datastore: "location of the MAKER datastore index log file."
    base_name_output: "base name for the output files."
    stdout_for_output: "STDOUT for output."
    write_gene_models: "write MAKER gene models to the file, and ignore evidence."
    print_fasta_sequence: "not print fasta sequence in footer"
    legacy_annotation_sets: "legacy annotation sets (ignores already having seen\\nfeatures more than once for the same contig)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}