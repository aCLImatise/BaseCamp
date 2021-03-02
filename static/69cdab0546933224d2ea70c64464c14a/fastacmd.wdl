version 1.0

task Fastacmd {
  input {
    Boolean? database__optionaldefault
    Boolean? type_fileg_guess
    Boolean? commadelimited_search_stringsgis
    Boolean? input_file_optional
    Boolean? retrieve_duplicate_accessions
    Boolean? line_length_sequence
    Boolean? definition_line_contain
    File? output_file_optionaldefault
    Boolean? use_ctrlas_nonredundant
    Boolean? dump_entire_database
    Boolean? range_extract_startstop
    Boolean? strand_subsequence_nucleotide
    Boolean? print_taxonomic_information
    Boolean? print_database_information
    Boolean? retrieve_sequences_pig
  }
  command <<<
    fastacmd \
      ~{if (database__optionaldefault) then "-d" else ""} \
      ~{if (type_fileg_guess) then "-p" else ""} \
      ~{if (commadelimited_search_stringsgis) then "-s" else ""} \
      ~{if (input_file_optional) then "-i" else ""} \
      ~{if (retrieve_duplicate_accessions) then "-a" else ""} \
      ~{if (line_length_sequence) then "-l" else ""} \
      ~{if (definition_line_contain) then "-t" else ""} \
      ~{if (output_file_optionaldefault) then "-o" else ""} \
      ~{if (use_ctrlas_nonredundant) then "-c" else ""} \
      ~{if (dump_entire_database) then "-D" else ""} \
      ~{if (range_extract_startstop) then "-L" else ""} \
      ~{if (strand_subsequence_nucleotide) then "-S" else ""} \
      ~{if (print_taxonomic_information) then "-T" else ""} \
      ~{if (print_database_information) then "-I" else ""} \
      ~{if (retrieve_sequences_pig) then "-P" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database__optionaldefault: "Database [String]  Optional\\ndefault = nr"
    type_fileg_guess: "Type of file\\nG - guess mode (look for protein, then nucleotide)\\nT - protein\\nF - nucleotide [String]  Optional\\ndefault = G"
    commadelimited_search_stringsgis: "Comma-delimited search string(s).\\nGIs, accessions, loci, or fullSeq-id strings may be used,\\ne.g. 555, AC147927, 'gnl|dbname|tag' [String]  Optional"
    input_file_optional: "Input file with GIs/accessions/loci for batch\\nretrieval [String]  Optional"
    retrieve_duplicate_accessions: "Retrieve duplicate accessions [T/F]  Optional\\ndefault = F"
    line_length_sequence: "Line length for sequence [Integer]  Optional\\ndefault = 80"
    definition_line_contain: "Definition line should contain target gi only [T/F]  Optional\\ndefault = F"
    output_file_optionaldefault: "Output file [File Out]  Optional\\ndefault = stdout"
    use_ctrlas_nonredundant: "Use Ctrl-A's as non-redundant defline separator [T/F]  Optional\\ndefault = F"
    dump_entire_database: "Dump the entire database as (default is not to dump anything):\\n1 FASTA\\n2 Gi list\\n3 Accession.version list"
    range_extract_startstop: "Range of sequence to extract (Format: start,stop)\\n0 in 'start' refers to the beginning of the sequence\\n0 in 'stop' refers to the end of the sequence [String]  Optional\\ndefault = 0,0"
    strand_subsequence_nucleotide: "Strand on subsequence (nucleotide only): 1 is top, 2 is bottom [Integer]\\ndefault = 1"
    print_taxonomic_information: "Print taxonomic information for requested sequence(s) [T/F]\\ndefault = F"
    print_database_information: "Print database information only (overrides all other options) [T/F]\\ndefault = F"
    retrieve_sequences_pig: "Retrieve sequences with this PIG [Integer]  Optional"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_optionaldefault = "${in_output_file_optionaldefault}"
  }
}