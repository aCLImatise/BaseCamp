version 1.0

task BasenjiData2py {
  input {
    File? alignment_net_file
    String? set_blacklist_nucleotides
    Int? break
    Int? crop
    String? downsample_the_segments
    String? commaseparated_list_files
    Boolean? interpolate_nans
    Int? sequence_length
    Boolean? local
    Int? alignment_net_fill
    Directory? output_directory
    Int? number_parallel_processes
    File? sequences_tfrecord_file
    Boolean? restart
    Int? seed
    String? snap
    String? stride_train
    Float? stride_test
    Boolean? soft
    Float? proportion_data_testing
    String? commaseparated_genome_segments
    String? u_map_clip
    Int? sum_pool_width
    Float? proportion_data_validation
    String na
  }
  command <<<
    basenji_data2_py \
      ~{na} \
      ~{if defined(alignment_net_file) then ("-a " +  '"' + alignment_net_file + '"') else ""} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(break) then ("--break " +  '"' + break + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if defined(downsample_the_segments) then ("-d " +  '"' + downsample_the_segments + '"') else ""} \
      ~{if defined(commaseparated_list_files) then ("-g " +  '"' + commaseparated_list_files + '"') else ""} \
      ~{if (interpolate_nans) then "-i" else ""} \
      ~{if defined(sequence_length) then ("-l " +  '"' + sequence_length + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(alignment_net_fill) then ("-n " +  '"' + alignment_net_fill + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_parallel_processes) then ("-p " +  '"' + number_parallel_processes + '"') else ""} \
      ~{if defined(sequences_tfrecord_file) then ("-r " +  '"' + sequences_tfrecord_file + '"') else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(snap) then ("--snap " +  '"' + snap + '"') else ""} \
      ~{if defined(stride_train) then ("--stride_train " +  '"' + stride_train + '"') else ""} \
      ~{if defined(stride_test) then ("--stride_test " +  '"' + stride_test + '"') else ""} \
      ~{if (soft) then "--soft" else ""} \
      ~{if defined(proportion_data_testing) then ("-t " +  '"' + proportion_data_testing + '"') else ""} \
      ~{if defined(commaseparated_genome_segments) then ("-u " +  '"' + commaseparated_genome_segments + '"') else ""} \
      ~{if defined(u_map_clip) then ("--umap_clip " +  '"' + u_map_clip + '"') else ""} \
      ~{if defined(sum_pool_width) then ("-w " +  '"' + sum_pool_width + '"') else ""} \
      ~{if defined(proportion_data_validation) then ("-v " +  '"' + proportion_data_validation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    alignment_net_file: "Alignment .net file"
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    break: "Break in half contigs above length [Default: none]"
    crop: "Crop bp off each end [Default: 0]"
    downsample_the_segments: "Down-sample the segments"
    commaseparated_list_files: "Comma-separated list of assembly gaps BED files\\n[Default: none]"
    interpolate_nans: "Interpolate NaNs [Default: False]"
    sequence_length: "Sequence length [Default: 131072]"
    local: "Run jobs locally as opposed to on SLURM [Default:\\nFalse]"
    alignment_net_fill: "Alignment net fill size minimum [Default: 100000]"
    output_directory: "Output directory [Default: data_out]"
    number_parallel_processes: "Number parallel processes [Default: none]"
    sequences_tfrecord_file: "Sequences per TFRecord file [Default: 256]"
    restart: "Skip already read HDF5 coverage values. [Default:\\nFalse]"
    seed: "Random seed [Default: 44]"
    snap: "Snap sequences to multiple of the given value\\n[Default: none]"
    stride_train: "Stride to advance train sequences [Default:\\nseq_length]"
    stride_test: "Stride to advance valid and test sequences [Default:\\n1.0]"
    soft: "Soft clip values, applying sqrt to the execess above\\nthe threshold [Default: False]"
    proportion_data_testing: "Proportion of the data for testing [Default: 0.1]"
    commaseparated_genome_segments: "Comma-separated genome unmappable segments to set to"
    u_map_clip: "Clip unmappable regions to this percentile in the\\nsequences' distribution of values"
    sum_pool_width: "Sum pool width [Default: 128]"
    proportion_data_validation: "Proportion of the data for validation [Default: 0.1]"
    na: "--umap_t=UMAP_T       Remove sequences with more than this unmappable bin %"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}