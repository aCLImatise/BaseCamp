version 1.0

task BasenjiDataAlignpy {
  input {
    String? genome_labels_output
    Int? break
    Int? crop
    String? downsample_the_segments
    String? generate_cross_split
    String? commaseparated_list_files
    Int? sequence_length
    Int? nf
    Int? no
    Directory? output_directory
    Int? seed
    Int? snap
    String? stride_train
    Float? stride_test
    Float? proportion_data_testing
    String? commaseparated_genome_segments
    Int? sum_pool_width
    Float? proportion_data_validation
    String na
  }
  command <<<
    basenji_data_align_py \
      ~{na} \
      ~{if defined(genome_labels_output) then ("-a " +  '"' + genome_labels_output + '"') else ""} \
      ~{if defined(break) then ("--break " +  '"' + break + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if defined(downsample_the_segments) then ("-d " +  '"' + downsample_the_segments + '"') else ""} \
      ~{if defined(generate_cross_split) then ("-f " +  '"' + generate_cross_split + '"') else ""} \
      ~{if defined(commaseparated_list_files) then ("-g " +  '"' + commaseparated_list_files + '"') else ""} \
      ~{if defined(sequence_length) then ("-l " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(nf) then ("--nf " +  '"' + nf + '"') else ""} \
      ~{if defined(no) then ("--no " +  '"' + no + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(snap) then ("--snap " +  '"' + snap + '"') else ""} \
      ~{if defined(stride_train) then ("--stride_train " +  '"' + stride_train + '"') else ""} \
      ~{if defined(stride_test) then ("--stride_test " +  '"' + stride_test + '"') else ""} \
      ~{if defined(proportion_data_testing) then ("-t " +  '"' + proportion_data_testing + '"') else ""} \
      ~{if defined(commaseparated_genome_segments) then ("-u " +  '"' + commaseparated_genome_segments + '"') else ""} \
      ~{if defined(sum_pool_width) then ("-w " +  '"' + sum_pool_width + '"') else ""} \
      ~{if defined(proportion_data_validation) then ("-v " +  '"' + proportion_data_validation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    genome_labels_output: "Genome labels in output"
    break: "Break in half contigs above length [Default: none]"
    crop: "Crop bp off each end [Default: 0]"
    downsample_the_segments: "Down-sample the segments"
    generate_cross_split: "Generate cross fold split [Default: none]"
    commaseparated_list_files: "Comma-separated list of assembly gaps BED files\\n[Default: none]"
    sequence_length: "Sequence length [Default: 131072]"
    nf: "Alignment net fill size minimum [Default: 100000]"
    no: "Alignment net and contig overlap minimum [Default:\\n1024]"
    output_directory: "Output directory [Default: align_out]"
    seed: "Random seed [Default: 44]"
    snap: "Snap sequences to multiple of the given value\\n[Default: 1]"
    stride_train: "Stride to advance train sequences [Default:\\nseq_length]"
    stride_test: "Stride to advance valid and test sequences [Default:\\n1.0]"
    proportion_data_testing: "Proportion of the data for testing [Default: 0.1]"
    commaseparated_genome_segments: "Comma-separated genome unmappable segments to set to"
    sum_pool_width: "Sum pool width [Default: 128]"
    proportion_data_validation: "Proportion of the data for validation [Default: 0.1]"
    na: "--umap_t=UMAP_T       Remove sequences with more than this unmappable bin %"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}