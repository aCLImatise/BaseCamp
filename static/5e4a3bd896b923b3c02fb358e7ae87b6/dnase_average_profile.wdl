version 1.0

task DnaseAverageProfile.py {
  input {
    String? window_size
    String? bias_file
    Boolean? ignores_information_relative
    Boolean? combine_strand_information
    Boolean? normalise_cut_counts
    Boolean? normalise_cutting_bias
    Boolean? atacseq_mode
    String regions
    String reads
    String filename_write_output
  }
  command <<<
    dnase_average_profile.py \
      ~{regions} \
      ~{reads} \
      ~{filename_write_output} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(bias_file) then ("--bias-file " +  '"' + bias_file + '"') else ""} \
      ~{true="-i" false="" ignores_information_relative} \
      ~{true="-c" false="" combine_strand_information} \
      ~{true="-n" false="" normalise_cut_counts} \
      ~{true="-b" false="" normalise_cutting_bias} \
      ~{true="-A" false="" atacseq_mode}
  >>>
  parameter_meta {
    window_size: "Size of flanking area around centre of the regions to plot (default: 100)"
    bias_file: "Location of the sorted, index"
    ignores_information_relative: "Ignores any strand information in BED file and plots data relative to reference strand"
    combine_strand_information: "Combine the strand information into one graph"
    normalise_cut_counts: "Normalise cut counts to a fraction peaks"
    normalise_cutting_bias: "Normalise for cutting bias"
    atacseq_mode: "ATAC-seq mode"
    regions: "BED file of the regions you want to generate the average profile for"
    reads: "The BAM file containing the DNase-seq data"
    filename_write_output: "filename to write the output to"
  }
}