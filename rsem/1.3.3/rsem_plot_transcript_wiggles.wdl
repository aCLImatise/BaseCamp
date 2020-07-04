version 1.0

task RsemPlotTranscriptWiggles {
  input {
    Boolean? gene_list
    Boolean? transcript_list
    Boolean? show_unique
    Int? p_slash_num_threads
    String? memory_per_thread
    Boolean? h_slash_help
    String sample_name
    String input_list
    String output_plot_file
  }
  command <<<
    rsem-plot-transcript-wiggles \
      ~{sample_name} \
      ~{input_list} \
      ~{output_plot_file} \
      ~{true="--gene-list" false="" gene_list} \
      ~{true="--transcript-list" false="" transcript_list} \
      ~{true="--show-unique" false="" show_unique} \
      ~{if defined(p_slash_num_threads) then ("-p/--num-threads " +  '"' + p_slash_num_threads + '"') else ""} \
      ~{if defined(memory_per_thread) then ("--memory-per-thread " +  '"' + memory_per_thread + '"') else ""} \
      ~{true="-h/--help" false="" h_slash_help}
  >>>
  parameter_meta {
    gene_list: "The input-list is a list of gene ids. (Default: off)"
    transcript_list: "The input-list is a list of transcript ids. This option can only be turned on if allele-specific expression is calculated. (Default: off)"
    show_unique: "Show the wiggle plots as stacked bar plots. See description section for details. (Default: off)"
    p_slash_num_threads: "Set the number of threads we can use. (Default: 1)"
    memory_per_thread: "Set the maximum allowable memory per thread. <string> represents the memory and accepts suffices 'K/M/G'. (Default: 1G)"
    h_slash_help: "Show help information."
    sample_name: "The name of the sample analyzed."
    input_list: "A list of transcript ids or gene ids. But it cannot be a mixture of transcript & gene ids. Each id occupies one line without extra spaces."
    output_plot_file: "The file name of the pdf file which contains all plots."
  }
}