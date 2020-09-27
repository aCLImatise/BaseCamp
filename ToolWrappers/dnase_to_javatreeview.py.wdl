version 1.0

task DnaseToJavatreeviewpy {
  input {
    Int? window_size
    Boolean? ignores_strand_information
    Boolean? orders_output_same
    Boolean? write_absolute_counts
    Boolean? disable_memory_caching
    Boolean? normalise_cutting_bias
    Boolean? atacseq_mode_default
    File? bias_file
    Boolean? randomise_ordering_output
    Boolean? n
    String regions
    String reads
    String filename_write_output
    String counts
  }
  command <<<
    dnase_to_javatreeview_py \
      ~{regions} \
      ~{reads} \
      ~{filename_write_output} \
      ~{counts} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if (ignores_strand_information) then "-i" else ""} \
      ~{if (orders_output_same) then "-o" else ""} \
      ~{if (write_absolute_counts) then "-a" else ""} \
      ~{if (disable_memory_caching) then "-c" else ""} \
      ~{if (normalise_cutting_bias) then "-b" else ""} \
      ~{if (atacseq_mode_default) then "-A" else ""} \
      ~{if defined(bias_file) then ("--bias-file " +  '"' + bias_file + '"') else ""} \
      ~{if (randomise_ordering_output) then "-r" else ""} \
      ~{if (n) then "-n" else ""}
  >>>
  parameter_meta {
    window_size: "Size of flanking area around centre of the regions to\\nplot (default: 100)"
    ignores_strand_information: "Ignores strand information in BED file"
    orders_output_same: "Orders output the same as the input (default: orders\\nby FOS)"
    write_absolute_counts: "Write absolute cut counts instead strand imbalanced"
    disable_memory_caching: "Disable memory caching (low RAM mode)"
    normalise_cutting_bias: "Normalise for cutting bias"
    atacseq_mode_default: "ATAC-seq mode (default: False)"
    bias_file: "Location of the sorted, index"
    randomise_ordering_output: "Randomise the ordering of the output"
    n: ""
    regions: "BED file of the regions you want to generate the\\nheatmap for"
    reads: "The BAM file containing the read data"
    filename_write_output: "filename to write the CSV output to"
    counts: "-n                    Normalise the cut data for each region between 0 and 1"
  }
  output {
    File out_stdout = stdout()
  }
}