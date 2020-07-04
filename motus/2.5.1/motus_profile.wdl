version 1.0

task MotusProfile {
  input {
    Array[File] input_files_reads_forward
    Array[File] input_files_reads_reverse
    Array[File] input_files_reads_mate
    Boolean? str_sample_name
    Array[File] provide_sam_files
    Boolean? file_provide_file
    String? db
    Boolean? file_file_name
    Boolean? file_save_result
    Boolean? file_save_mgc
    Boolean? profile_only_species
    Boolean? print_result_counts
    Boolean? print_ncbi_i
    Boolean? print_full_name
    Boolean? print_full_taxonomy
    Boolean? print_result_biom
    Boolean? str_print_result
    Boolean? print_taxonomy_levels
    Boolean? str__level
    Boolean? int_number_marker
    Boolean? int_min_length
    Boolean? int_number_threads
    Boolean? int_error_warning
    Boolean? str_type_read
  }
  command <<<
    motus profile \
      ~{if defined(input_files_reads_forward) then ("-f " +  '"' + input_files_reads_forward + '"') else ""} \
      ~{if defined(input_files_reads_reverse) then ("-r " +  '"' + input_files_reads_reverse + '"') else ""} \
      ~{if defined(input_files_reads_mate) then ("-s " +  '"' + input_files_reads_mate + '"') else ""} \
      ~{true="-n" false="" str_sample_name} \
      ~{if defined(provide_sam_files) then ("-i " +  '"' + provide_sam_files + '"') else ""} \
      ~{true="-m" false="" file_provide_file} \
      ~{if defined(db) then ("-db " +  '"' + db + '"') else ""} \
      ~{true="-o" false="" file_file_name} \
      ~{true="-I" false="" file_save_result} \
      ~{true="-M" false="" file_save_mgc} \
      ~{true="-e" false="" profile_only_species} \
      ~{true="-c" false="" print_result_counts} \
      ~{true="-p" false="" print_ncbi_i} \
      ~{true="-u" false="" print_full_name} \
      ~{true="-q" false="" print_full_taxonomy} \
      ~{true="-B" false="" print_result_biom} \
      ~{true="-C" false="" str_print_result} \
      ~{true="-A" false="" print_taxonomy_levels} \
      ~{true="-k" false="" str__level} \
      ~{true="-g" false="" int_number_marker} \
      ~{true="-l" false="" int_min_length} \
      ~{true="-t" false="" int_number_threads} \
      ~{true="-v" false="" int_error_warning} \
      ~{true="-y" false="" str_type_read}
  >>>
  parameter_meta {
    input_files_reads_forward: "input file(s) for reads in forward orientation, fastq formatted"
    input_files_reads_reverse: "input file(s) for reads in reverse orientation, fastq formatted"
    input_files_reads_mate: "input file(s) for reads without mate, fastq formatted"
    str_sample_name: "STR          sample name"
    provide_sam_files: "provide sam or bam input file(s)"
    file_provide_file: "FILE         provide a mgc reads count file"
    db: "provide a database directory"
    file_file_name: "FILE         output file name [stdout]"
    file_save_result: "FILE         save the result of bwa in bam format (intermediate step) [None]"
    file_save_mgc: "FILE         save the mgc reads count (intermediate step) [None]"
    profile_only_species: "profile only reference species (ref_mOTUs)"
    print_result_counts: "print result as counts instead of relative abundances"
    print_ncbi_i: "print NCBI id"
    print_full_name: "print the full name of the species"
    print_full_taxonomy: "print the full rank taxonomy"
    print_result_biom: "print result in BIOM format"
    str_print_result: "STR          print result in CAMI format (BioBoxes format 0.9.1) Values: [precision, recall, parenthesis]"
    print_taxonomy_levels: "print all taxonomy levels together"
    str__level: "STR          taxonomic level [mOTU] Values: [kingdom, phylum, class, order, family, genus, mOTU]"
    int_number_marker: "INT          number of marker genes cutoff: 1=higher recall, 10=higher precision [3]"
    int_min_length: "INT          min. length of alignment for the reads (number of nucleotides) [75]"
    int_number_threads: "INT          number of threads [1]"
    int_error_warning: "INT          verbose level: 1=error, 2=warning, 3=message, 4+=debugging [3]"
    str_type_read: "STR          type of read counts [insert.scaled_counts] Values: [base.coverage, insert.raw_counts, insert.scaled_counts]"
  }
}