version 1.0

task GenerateTranscripts.py {
  input {
    String? input_fast_a_exons
    String? input_database
    String? skip
    String? threshold_length
    String? output_fast_a
    String? output_extra
    String? output_directory_written
  }
  command <<<
    generate_transcripts.py \
      ~{if defined(input_fast_a_exons) then ("--input_fasta_exons " +  '"' + input_fast_a_exons + '"') else ""} \
      ~{if defined(input_database) then ("--input_database " +  '"' + input_database + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(threshold_length) then ("--threshold_length " +  '"' + threshold_length + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output_fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(output_extra) then ("--output_extra " +  '"' + output_extra + '"') else ""} \
      ~{if defined(output_directory_written) then ("--output " +  '"' + output_directory_written + '"') else ""}
  >>>
  parameter_meta {
    input_fast_a_exons: "A FASTA file containing all the exon sequences (e.g. 'exons.fa')."
    input_database: "A text file containg all the information regarding exons, genes, proteins and their positions (e.g. 'exons.txt')"
    skip: "A text file containg all the (Ensembl) genes ids which should be skipped (i.e. not added to the output), e.g. miRNA genes."
    threshold_length: "Transcripts shorter than this will be skipped and their sequences will not be in the output. Default is '150'."
    output_fast_a: "The output file containing all the assembled transcripts in FASTA format."
    output_extra: "Extra information about transcripts."
    output_directory_written: "The output directory where the assembled transcripts are written. Default is '.'."
  }
}