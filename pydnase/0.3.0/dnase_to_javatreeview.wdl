version 1.0

task DnaseToJavatreeview.py {
  input {
    String? window_size
    Boolean? ignores_strand_information
    Boolean? orders_output_same
    Boolean? write_counts_strand
    Boolean? normalise_cut_data
    Boolean? disable_memory_caching
    Boolean? normalise_cutting_bias
    Boolean? atacseq_mode_default
    String? bias_file
    Boolean? randomise_ordering_output
    String regions
    String reads
    String filename_write_output
  }
  command <<<
    dnase_to_javatreeview.py \
      ~{regions} \
      ~{reads} \
      ~{filename_write_output} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{true="-i" false="" ignores_strand_information} \
      ~{true="-o" false="" orders_output_same} \
      ~{true="-a" false="" write_counts_strand} \
      ~{true="-n" false="" normalise_cut_data} \
      ~{true="-c" false="" disable_memory_caching} \
      ~{true="-b" false="" normalise_cutting_bias} \
      ~{true="-A" false="" atacseq_mode_default} \
      ~{if defined(bias_file) then ("--bias-file " +  '"' + bias_file + '"') else ""} \
      ~{true="-r" false="" randomise_ordering_output}
  >>>
  parameter_meta {
    window_size: "Size of flanking area around centre of the regions to plot (default: 100)"
    ignores_strand_information: "Ignores strand information in BED file"
    orders_output_same: "Orders output the same as the input (default: orders by FOS)"
    write_counts_strand: "Write absolute cut counts instead strand imbalanced counts"
    normalise_cut_data: "Normalise the cut data for each region between 0 and 1"
    disable_memory_caching: "Disable memory caching (low RAM mode)"
    normalise_cutting_bias: "Normalise for cutting bias"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    bias_file: "Location of the sorted, index"
    randomise_ordering_output: "Randomise the ordering of the output"
    regions: "BED file of the regions you want to generate the heatmap for"
    reads: "The BAM file containing the read data"
    filename_write_output: "filename to write the CSV output to"
  }
}