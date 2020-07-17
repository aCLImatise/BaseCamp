version 1.0

task Gffread {
  input {
    Boolean? expose_warn_duplicate
    Boolean? decode_url_encoded
    Boolean? merge_close_exons
    Boolean? write_spliced_exons
    Boolean? write_spliced_cds
    Boolean? w_x_options
    Boolean? write_fasta_file
    Boolean? ensembl_gtf_gff
    Boolean? chrreplace_reference_genomic
    Boolean? gff_records_will
    Boolean? use_trackname_second
    String? will_output_format
    String input_gff
  }
  command <<<
    gffread \
      ~{input_gff} \
      ~{true="-E" false="" expose_warn_duplicate} \
      ~{true="-D" false="" decode_url_encoded} \
      ~{true="-Z" false="" merge_close_exons} \
      ~{true="-w" false="" write_spliced_exons} \
      ~{true="-x" false="" write_spliced_cds} \
      ~{true="-W" false="" w_x_options} \
      ~{true="-y" false="" write_fasta_file} \
      ~{true="-L" false="" ensembl_gtf_gff} \
      ~{true="-m" false="" chrreplace_reference_genomic} \
      ~{true="-o" false="" gff_records_will} \
      ~{true="-t" false="" use_trackname_second} \
      ~{if defined(will_output_format) then ("-T " +  '"' + will_output_format + '"') else ""}
  >>>
  parameter_meta {
    expose_warn_duplicate: "expose (warn about) duplicate transcript IDs and other potential  problems with the given GFF/GTF records"
    decode_url_encoded: "decode url encoded characters within attributes"
    merge_close_exons: "merge close exons into a single exon (for intron size<4)"
    write_spliced_exons: "write a fasta file with spliced exons for each GFF transcript"
    write_spliced_cds: "write a fasta file with spliced CDS for each GFF transcript"
    w_x_options: "for -w and -x options, also write for each fasta record the exon coordinates projected onto the spliced sequence"
    write_fasta_file: "write a protein fasta file with the translation of CDS for each record"
    ensembl_gtf_gff: "Ensembl GTF to GFF3 conversion (implies -F; should be used with -m)"
    chrreplace_reference_genomic: "<chr_replace> is a reference (genomic) sequence replacement table with this format: <original_ref_ID> <new_ref_ID> GFF records on reference sequences that are not found among the <original_ref_ID> entries in this file will be filtered out"
    gff_records_will: "the \"filtered\" GFF records will be written to <outfile.gff> (use -o- for printing to stdout)"
    use_trackname_second: "use <trackname> in the second column of each GFF output line"
    will_output_format: "will output GTF format instead of GFF3"
    input_gff: ""
  }
}