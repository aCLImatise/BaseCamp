version 1.0

task EcoPCR {
  input {
    Boolean? salt_concentration_m
    Boolean? consider_database_sequences
    Boolean? atabase_match_format
    Boolean? keeps_specified_number
    Boolean? rror_max_errors
    Boolean? gnore_given_taxonomy
    Boolean? ingdom_mode_set
    Boolean? minimum_ength_define
    Boolean? maximum_ength_define
    Boolean? salt_correction_method
    Boolean? estricts_search_given
    String nucleo_tid_ic_patterns
  }
  command <<<
    ecoPCR \
      ~{nucleo_tid_ic_patterns} \
      ~{if (salt_concentration_m) then "-a" else ""} \
      ~{if (consider_database_sequences) then "-c" else ""} \
      ~{if (atabase_match_format) then "-d" else ""} \
      ~{if (keeps_specified_number) then "-D" else ""} \
      ~{if (rror_max_errors) then "-e" else ""} \
      ~{if (gnore_given_taxonomy) then "-i" else ""} \
      ~{if (ingdom_mode_set) then "-k" else ""} \
      ~{if (minimum_ength_define) then "-l" else ""} \
      ~{if (maximum_ength_define) then "-L" else ""} \
      ~{if (salt_correction_method) then "-m" else ""} \
      ~{if (estricts_search_given) then "-r" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    salt_concentration_m: ": Salt concentration in M for Tm computation (default 0.05 M)"
    consider_database_sequences: ": Consider that the database sequences are [c]ircular"
    atabase_match_format: ": [D]atabase : to match the expected format, the database\\nhas to be formated first by the ecoPCRFormat.py program located.\\nin the tools directory.\\necoPCRFormat.py creates three file types :\\n.sdx : contains the sequences\\n.tdx : contains information concerning the taxonomy\\n.rdx : contains the taxonomy rank\\necoPCR needs all the file type. As a result, you have to write the\\ndatabase radical without any extension. For example /ecoPCRDB/gbmam"
    keeps_specified_number: ": Keeps the specified number of nucleotides on each side of the in silico\\namplified sequences (including the amplified DNA fragment plus the two target\\nsequences of the primers)."
    rror_max_errors: ": [E]rror : max errors allowed by oligonucleotide (0 by default)"
    gnore_given_taxonomy: ": [I]gnore the given taxonomy id.\\nTaxonomy id are available using the ecofind program.\\nsee its help typing ecofind -h for more information."
    ingdom_mode_set: ": [K]ingdom mode : set the kingdom mode\\nsuper kingdom mode by default."
    minimum_ength_define: ": minimum [L]ength : define the minimum amplication length."
    maximum_ength_define: ": maximum [L]ength : define the maximum amplicationlength."
    salt_correction_method: ": Salt correction method for Tm computation (SANTALUCIA : 1\\nor OWCZARZY:2, default=1)"
    estricts_search_given: ": [R]estricts the search to the given taxonomic id.\\nTaxonomy id are available using the ecofind program.\\nsee its help typing ecofind -h for more information."
    nucleo_tid_ic_patterns: ""
  }
  output {
    File out_stdout = stdout()
  }
}