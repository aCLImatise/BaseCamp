version 1.0

task MaltExtract {
  input {
    String? top
    Boolean? de_stacking_off
    Boolean? down_samp_off
    Boolean? dupre_m_off
    String? filter
    String? specify_input_directory
    Boolean? matches
    Int? max_read_length
    Boolean? megan_summary
    String? min_comp
    String? min_pi
    String? specify_out_directory
    Int? threads
    String? resources
    Boolean? reads
    Boolean? single_stranded
    String? tax_a
    Boolean? use_top_alignment
    Boolean? verbose
  }
  command <<<
    MaltExtract \
      ~{if defined(top) then ("--top " +  '"' + top + '"') else ""} \
      ~{true="--destackingOff" false="" de_stacking_off} \
      ~{true="--downSampOff" false="" down_samp_off} \
      ~{true="--dupRemOff" false="" dupre_m_off} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(specify_input_directory) then ("--input " +  '"' + specify_input_directory + '"') else ""} \
      ~{true="--matches" false="" matches} \
      ~{if defined(max_read_length) then ("--maxReadLength " +  '"' + max_read_length + '"') else ""} \
      ~{true="--meganSummary" false="" megan_summary} \
      ~{if defined(min_comp) then ("--minComp " +  '"' + min_comp + '"') else ""} \
      ~{if defined(min_pi) then ("--minPI " +  '"' + min_pi + '"') else ""} \
      ~{if defined(specify_out_directory) then ("--output " +  '"' + specify_out_directory + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(resources) then ("--resources " +  '"' + resources + '"') else ""} \
      ~{true="--reads" false="" reads} \
      ~{true="--singleStranded" false="" single_stranded} \
      ~{if defined(tax_a) then ("--taxa " +  '"' + tax_a + '"') else ""} \
      ~{true="--useTopAlignment" false="" use_top_alignment} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    top: "Use top scoring 0.XX of alignments by defualt 0.01"
    de_stacking_off: "Turn Off automated stacked Read Removal only useful in >1 coverage data"
    down_samp_off: "Turn Off automatic downsampling on nodes with more than 10.000 assigned reads"
    dupre_m_off: "Turn Off automated pcr duplicate removal useful in >1 coverage data"
    filter: "Use chosen filter full (def_anc), ancient, default, crawl, scan, srna,assignment"
    specify_input_directory: "Specify input directory or RMA6 files"
    matches: "Retrieve Alignments"
    max_read_length: "Set maximum read length"
    megan_summary: "Return Megan Summary Files"
    min_comp: "Use minimum complexity"
    min_pi: "Set minimum percent identity to XX.X"
    specify_out_directory: "Specify out directory"
    threads: "How many cores to use?"
    resources: "Set path to required ncbi files"
    reads: "Retrieve Reads"
    single_stranded: "Switch damage patterns to single stranded mode"
    tax_a: "Target species or List of targets"
    use_top_alignment: "Use only the top Alignment per read after filtering"
    verbose: "How much output to print to screen"
  }
}