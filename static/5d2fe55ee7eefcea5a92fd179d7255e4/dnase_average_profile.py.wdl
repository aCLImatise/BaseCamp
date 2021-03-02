version 1.0

task DnaseAverageProfilepy {
  input {
    Int? window_size
    File? bias_file
    Boolean? ignores_strand_information
    Boolean? combine_strand_information
    Boolean? normalise_cut_counts
    Boolean? normalise_cutting_bias
    Boolean? atacseq_mode
    String regions
    String reads
    String filename_write_output
  }
  command <<<
    dnase_average_profile_py \
      ~{regions} \
      ~{reads} \
      ~{filename_write_output} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""} \
      ~{if defined(bias_file) then ("--bias-file " +  '"' + bias_file + '"') else ""} \
      ~{if (ignores_strand_information) then "-i" else ""} \
      ~{if (combine_strand_information) then "-c" else ""} \
      ~{if (normalise_cut_counts) then "-n" else ""} \
      ~{if (normalise_cutting_bias) then "-b" else ""} \
      ~{if (atacseq_mode) then "-A" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    window_size: "Size of flanking area around centre of the regions to\\nplot (default: 100)"
    bias_file: "Location of the sorted, index"
    ignores_strand_information: "Ignores any strand information in BED file and plots\\ndata relative to reference strand"
    combine_strand_information: "Combine the strand information into one graph"
    normalise_cut_counts: "Normalise cut counts to a fraction peaks"
    normalise_cutting_bias: "Normalise for cutting bias"
    atacseq_mode: "ATAC-seq mode"
    regions: "BED file of the regions you want to generate the\\naverage profile for"
    reads: "The BAM file containing the DNase-seq data"
    filename_write_output: "filename to write the output to"
  }
  output {
    File out_stdout = stdout()
  }
}