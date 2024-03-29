version 1.0

task Rsemplottranscriptwiggles {
  input {
    Boolean? gene_list
    Boolean? transcript_list
    Boolean? show_unique
    Int? num_threads
    String? memory_per_thread
    String sample_name
    String input_list
  }
  command <<<
    rsem_plot_transcript_wiggles \
      ~{sample_name} \
      ~{input_list} \
      ~{if (gene_list) then "--gene-list" else ""} \
      ~{if (transcript_list) then "--transcript-list" else ""} \
      ~{if (show_unique) then "--show-unique" else ""} \
      ~{if defined(num_threads) then ("--num-threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(memory_per_thread) then ("--memory-per-thread " +  '"' + memory_per_thread + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gene_list: "The input-list is a list of gene ids. (Default: off)"
    transcript_list: "The input-list is a list of transcript ids. This option can only be\\nturned on if allele-specific expression is calculated. (Default:\\noff)"
    show_unique: "Show the wiggle plots as stacked bar plots. See description section\\nfor details. (Default: off)"
    num_threads: "Set the number of threads we can use. (Default: 1)"
    memory_per_thread: "Set the maximum allowable memory per thread. <string> represents the\\nmemory and accepts suffices 'K/M/G'. (Default: 1G)"
    sample_name: "The name of the sample analyzed."
    input_list: "A list of transcript ids or gene ids. But it cannot be a mixture of\\ntranscript & gene ids. Each id occupies one line without extra\\nspaces."
  }
  output {
    File out_stdout = stdout()
  }
}