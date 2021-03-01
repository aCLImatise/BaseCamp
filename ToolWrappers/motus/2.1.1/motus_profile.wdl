version 1.0

task MotusProfile {
  input {
    Array[File] input_files_reads_forward_formatted
    Array[File] input_files_reads_reverse_formatted
    Array[File] input_files_reads_mate_formatted
    String? sample_name
    Array[File] provide_sam_bam
    File? provide_mgc_reads
    File? output_file_name
    File? save_result_step
    File? save_mgc_reads
    Boolean? profile_only_species
    Boolean? print_result_counts
    Boolean? print_ncbi_i
    Boolean? print_full_name
    Boolean? print_rank_taxonomy
    Boolean? print_result_biom
    Float? print_result_cami
    String? taxonomic_level_values
    Int? number_marker_genes
    Int? min_length_alignment
    Int? number_of_threads
    Int? verbose_level_error
    String? type_read_counts
  }
  command <<<
    motus profile \
      ~{if defined(input_files_reads_forward_formatted) then ("-f " +  '"' + input_files_reads_forward_formatted + '"') else ""} \
      ~{if defined(input_files_reads_reverse_formatted) then ("-r " +  '"' + input_files_reads_reverse_formatted + '"') else ""} \
      ~{if defined(input_files_reads_mate_formatted) then ("-s " +  '"' + input_files_reads_mate_formatted + '"') else ""} \
      ~{if defined(sample_name) then ("-n " +  '"' + sample_name + '"') else ""} \
      ~{if defined(provide_sam_bam) then ("-i " +  '"' + provide_sam_bam + '"') else ""} \
      ~{if defined(provide_mgc_reads) then ("-m " +  '"' + provide_mgc_reads + '"') else ""} \
      ~{if defined(output_file_name) then ("-o " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(save_result_step) then ("-I " +  '"' + save_result_step + '"') else ""} \
      ~{if defined(save_mgc_reads) then ("-M " +  '"' + save_mgc_reads + '"') else ""} \
      ~{if (profile_only_species) then "-e" else ""} \
      ~{if (print_result_counts) then "-c" else ""} \
      ~{if (print_ncbi_i) then "-p" else ""} \
      ~{if (print_full_name) then "-u" else ""} \
      ~{if (print_rank_taxonomy) then "-q" else ""} \
      ~{if (print_result_biom) then "-B" else ""} \
      ~{if defined(print_result_cami) then ("-C " +  '"' + print_result_cami + '"') else ""} \
      ~{if defined(taxonomic_level_values) then ("-k " +  '"' + taxonomic_level_values + '"') else ""} \
      ~{if defined(number_marker_genes) then ("-g " +  '"' + number_marker_genes + '"') else ""} \
      ~{if defined(min_length_alignment) then ("-l " +  '"' + min_length_alignment + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(verbose_level_error) then ("-v " +  '"' + verbose_level_error + '"') else ""} \
      ~{if defined(type_read_counts) then ("-y " +  '"' + type_read_counts + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_files_reads_forward_formatted: "input file(s) for reads in forward orientation, fastq formatted"
    input_files_reads_reverse_formatted: "input file(s) for reads in reverse orientation, fastq formatted"
    input_files_reads_mate_formatted: "input file(s) for reads without mate, fastq formatted"
    sample_name: "sample name"
    provide_sam_bam: "provide sam or bam input file(s)"
    provide_mgc_reads: "provide a mgc reads count file"
    output_file_name: "output file name [stdout]"
    save_result_step: "save the result of bwa in bam format (intermediate step) [None]"
    save_mgc_reads: "save the mgc reads count (intermediate step) [None]"
    profile_only_species: "profile only reference species (ref_mOTUs)"
    print_result_counts: "print result as counts instead of relative abundances"
    print_ncbi_i: "print NCBI id"
    print_full_name: "print the full name of the species"
    print_rank_taxonomy: "print the full rank taxonomy"
    print_result_biom: "print result in BIOM format"
    print_result_cami: "print result in CAMI format (BioBoxes format 0.9.1)\\nValues: [precision, recall, parenthesis]"
    taxonomic_level_values: "taxonomic level [mOTU]\\nValues: [kingdom, phylum, class, order, family, genus, mOTU]"
    number_marker_genes: "number of marker genes cutoff: 1=higher recall, 10=higher precision [3]"
    min_length_alignment: "min. length of alignment for the reads (number of nucleotides) [75]"
    number_of_threads: "number of threads [1]"
    verbose_level_error: "verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
    type_read_counts: "type of read counts [insert.scaled_counts]\\nValues: [base.coverage, insert.raw_counts, insert.scaled_counts]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}