version 1.0

task DiamondAddTaxonomy {
  input {
    File? tax_dump_filename
    File? tax_db_filename
    Int? diamond_output_format
    File? output_file
    String stax_ids
    String column_dot
  }
  command <<<
    diamond_add_taxonomy \
      ~{stax_ids} \
      ~{column_dot} \
      ~{if defined(tax_dump_filename) then ("--taxdump_filename " +  '"' + tax_dump_filename + '"') else ""} \
      ~{if defined(tax_db_filename) then ("--taxdb_filename " +  '"' + tax_db_filename + '"') else ""} \
      ~{if defined(diamond_output_format) then ("--diamond_output_format " +  '"' + diamond_output_format + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    tax_dump_filename: "Path to local copy of NCBI taxdump.tar.gz file"
    tax_db_filename: "Name for the processed database, will be\\nloaded if it exists"
    diamond_output_format: "Output format used by DIAMOND (most include\\nstaxids)  [default: 6 qseqid sseqid pident\\nlength mismatch gapopen qstart qend sstart\\nsend evalue bitscore slen qlen qcovhsp stitle\\nstaxids]"
    output_file: "Output file to write output with expanded\\ntaxonomy information (TSV format)"
    stax_ids: "A new output file is created with 7 extra columns on the right hand side"
    column_dot: "The taxonomy lookup is performed using the NCBI taxonomy database via ete3"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}