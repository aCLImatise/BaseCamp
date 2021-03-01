version 1.0

task EcoPrimers {
  input {
    Boolean? atabase_match_format
    Boolean? rror_max_error
    Boolean? gnore_given_taxonomy
    Boolean? minimum_ength_define
    Boolean? maximum_ength_define
    Boolean? estricts_search_restrict
    Boolean? xception_taxid_allows
    Boolean? consider_database_sequences
    Boolean? three_prime_strict
    Boolean? strict_matching_uorum
    Boolean? _ensitivity_quorum
    Boolean? required_axon_level
    Boolean? false_positive_quorum
    Boolean? set_ouble_strand
    Boolean? set_primer_length
    Boolean? set_ingle_strand
    Boolean? salt_correction_method
    Boolean? salt_contentration_m
    Boolean? _multi_match
    Boolean? define_eference_sequence
    Boolean? print_list_identifier
    Boolean? remove_data_step
    Boolean? store_statistic_file
    Boolean? print_sets_primers
    Boolean? ignore_pairs_having
  }
  command <<<
    ecoPrimers \
      ~{if (atabase_match_format) then "-d" else ""} \
      ~{if (rror_max_error) then "-e" else ""} \
      ~{if (gnore_given_taxonomy) then "-i" else ""} \
      ~{if (minimum_ength_define) then "-l" else ""} \
      ~{if (maximum_ength_define) then "-L" else ""} \
      ~{if (estricts_search_restrict) then "-r" else ""} \
      ~{if (xception_taxid_allows) then "-E" else ""} \
      ~{if (consider_database_sequences) then "-c" else ""} \
      ~{if (three_prime_strict) then "-3" else ""} \
      ~{if (strict_matching_uorum) then "-q" else ""} \
      ~{if (_ensitivity_quorum) then "-s" else ""} \
      ~{if (required_axon_level) then "-t" else ""} \
      ~{if (false_positive_quorum) then "-x" else ""} \
      ~{if (set_ouble_strand) then "-D" else ""} \
      ~{if (set_primer_length) then "-O" else ""} \
      ~{if (set_ingle_strand) then "-S" else ""} \
      ~{if (salt_correction_method) then "-m" else ""} \
      ~{if (salt_contentration_m) then "-a" else ""} \
      ~{if (_multi_match) then "-U" else ""} \
      ~{if (define_eference_sequence) then "-R" else ""} \
      ~{if (print_list_identifier) then "-A" else ""} \
      ~{if (remove_data_step) then "-f" else ""} \
      ~{if (store_statistic_file) then "-v" else ""} \
      ~{if (print_sets_primers) then "-p" else ""} \
      ~{if (ignore_pairs_having) then "-T" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    atabase_match_format: ": [D]atabase : to match the expected format, the database\\nhas to be formated first by the ecoPCRFormat.py program located.\\nin the ecoPCR/tools directory.\\necoPCRFormat.py creates three file types :\\n.sdx : contains the sequences\\n.tdx : contains information concerning the taxonomy\\n.rdx : contains the taxonomy rank\\necoPrimer needs all the file type. As a result, you have to write the\\ndatabase radical without any extension. For example /ecoPrimerDB/fstvert"
    rror_max_error: ": [E]rror : max error allowed by oligonucleotide (0 by default)"
    gnore_given_taxonomy: ": [I]gnore the given taxonomy id (define the counterexample taxon set)."
    minimum_ength_define: ": minimum [L]ength : define the minimum amplication length."
    maximum_ength_define: ": maximum [L]ength : define the maximum amplicationlength."
    estricts_search_restrict: ": [R]estricts the search to the given taxonomic id (restrict the example taxon set)."
    xception_taxid_allows: ": [E]xception taxid allows to indicate than some subclade of example sequences are conterexamples."
    consider_database_sequences: ": Consider that the database sequences are [c]ircular"
    three_prime_strict: ": Three prime strict match"
    strict_matching_uorum: ": Strict matching [q]uorum, percentage of the sequences in which strict primers are found. By default it is 70"
    _ensitivity_quorum: ": [S]ensitivity quorum"
    required_axon_level: ": required [t]axon level for results, by default the results are computed at species level"
    false_positive_quorum: ": false positive quorum"
    set_ouble_strand: ": set in [d]ouble strand mode"
    set_primer_length: ": set the primer length (default 18)"
    set_ingle_strand: ": Set in [s]ingle strand mode"
    salt_correction_method: ": Salt correction method for Tm computation (SANTALUCIA : 1 or OWCZARZY:2, default=1)"
    salt_contentration_m: ": Salt contentration in M for Tm computation (default 0.05 M)"
    _multi_match: ": No multi match"
    define_eference_sequence: ": Define the [R]eference sequence identifier (must be part of example set)"
    print_list_identifier: ": Print the list of all identifier of sequences present in the database"
    remove_data_step: ": Remove data mining step during  strict primer identification"
    store_statistic_file: ": Store statistic file about memory usage during strict primer identification"
    print_sets_primers: ": Print sets of primers (may take several minutes after primers have been designed!)"
    ignore_pairs_having: ": Ignore pairs having specificity below this Threshold"
  }
  output {
    File out_stdout = stdout()
  }
}