version 1.0

task DiamondAddTaxonomy {
  input {
    File? tax_dump_filename
    File? tax_db_filename
    String? diamond_output_format
    File? output_file
    String diamond_output_file
  }
  command <<<
    diamond_add_taxonomy \
      ~{diamond_output_file} \
      ~{if defined(tax_dump_filename) then ("--taxdump_filename " +  '"' + tax_dump_filename + '"') else ""} \
      ~{if defined(tax_db_filename) then ("--taxdb_filename " +  '"' + tax_db_filename + '"') else ""} \
      ~{if defined(diamond_output_format) then ("--diamond_output_format " +  '"' + diamond_output_format + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    tax_dump_filename: "Path to local copy of NCBI taxdump.tar.gz file"
    tax_db_filename: "Name for the processed database, will be loaded if it exists"
    diamond_output_format: "Output format used by DIAMOND (most include staxids)  [default: 6 qseqid sseqid pident length mismatch gapopen qstart qend sstart send evalue bitscore slen qlen qcovhsp stitle staxids]"
    output_file: "Output file to write output with expanded taxonomy information (TSV format)"
    diamond_output_file: ""
  }
}