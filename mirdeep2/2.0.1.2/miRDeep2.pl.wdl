version 1.0

task MiRDeep2pl {
  input {
    Int? minimum_read_stack
    Int? maximum_number_analyze
    Int? minimum_score_cutoff
    Boolean? disable_randfold_analysis
    Boolean? disable_pdf_generation
    String? species_analyzed_used
    Boolean? output_list_ucsc
    Boolean? remove_directory_temporary
    Boolean? sort_aligned_reads
    File? file_known_mirbase
    String? additional_tag_appended
    Boolean? use_switch_contain
    String analyzed_dot
  }
  command <<<
    miRDeep2_pl \
      ~{analyzed_dot} \
      ~{if defined(minimum_read_stack) then ("-a " +  '"' + minimum_read_stack + '"') else ""} \
      ~{if defined(maximum_number_analyze) then ("-g " +  '"' + maximum_number_analyze + '"') else ""} \
      ~{if defined(minimum_score_cutoff) then ("-b " +  '"' + minimum_score_cutoff + '"') else ""} \
      ~{if (disable_randfold_analysis) then "-c" else ""} \
      ~{if (disable_pdf_generation) then "-d" else ""} \
      ~{if defined(species_analyzed_used) then ("-t " +  '"' + species_analyzed_used + '"') else ""} \
      ~{if (output_list_ucsc) then "-u" else ""} \
      ~{if (remove_directory_temporary) then "-v" else ""} \
      ~{if (sort_aligned_reads) then "-o" else ""} \
      ~{if defined(file_known_mirbase) then ("-s " +  '"' + file_known_mirbase + '"') else ""} \
      ~{if defined(additional_tag_appended) then ("-z " +  '"' + additional_tag_appended + '"') else ""} \
      ~{if (use_switch_contain) then "-P" else ""}
  >>>
  parameter_meta {
    minimum_read_stack: "minimum read stack height that triggers analysis. Using this option disables\\nautomatic estimation of the optimal value and all detected precursors are analyzed"
    maximum_number_analyze: "maximum number of precursors to analyze when automatic excision gearing is used.\\ndefault=50.000, if set to -1 all precursors will be analyzed"
    minimum_score_cutoff: "minimum score cut-off for predicted novel miRNAs to be displayed in the overview\\ntable. This score cut-off is by default 0."
    disable_randfold_analysis: "disable randfold analysis"
    disable_pdf_generation: "disable pdf generation"
    species_analyzed_used: "species being analyzed - this is used to link to the appropriate UCSC browser entry"
    output_list_ucsc: "output list of UCSC browser species that are supported and exit"
    remove_directory_temporary: "remove directory with temporary files"
    sort_aligned_reads: "do not sort aligned reads in pdf files by sample, only used if multiple samples were used as input (see Readme for mor information)"
    file_known_mirbase: "File with known miRBase star sequences"
    additional_tag_appended: "Additional tag appended to current time stamp"
    use_switch_contain: "use this switch if mature_ref_miRNAs contain miRBase v18 identifiers (5p and 3p) instead of previous ids from v17"
    analyzed_dot: "precursors    miRBase miRNA precursor sequences in fasta format. These should be the known precursor"
  }
  output {
    File out_stdout = stdout()
  }
}