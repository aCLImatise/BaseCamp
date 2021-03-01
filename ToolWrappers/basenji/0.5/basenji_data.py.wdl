version 1.0

task BasenjiDatapy {
  input {
    String? set_blacklist_nucleotides
    Int? break
    Int? crop
    String? downsample_the_segments
    String? generate_cross_split
    File? genome_assembly_gaps
    Boolean? interpolate_nans
    Int? sequence_length
    File? limit
    Boolean? local
    Directory? output_directory
    Int? number_parallel_processes
    Boolean? peaks
    File? sequences_tfrecord_file
    Boolean? restart
    Int? seed
    Int? snap
    Boolean? split_test
    String? stride_train
    String? stride_test
    Float? proportion_data_testing
    String? unmappable_regions_bed
    Float? u_map_t
    Float? u_map_clip
    Boolean? u_map_tfr
    Int? sum_pool_width
    Float? proportion_data_validation
    String fast_a_file
    String targets_file
  }
  command <<<
    basenji_data_py \
      ~{fast_a_file} \
      ~{targets_file} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(break) then ("--break " +  '"' + break + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if defined(downsample_the_segments) then ("-d " +  '"' + downsample_the_segments + '"') else ""} \
      ~{if defined(generate_cross_split) then ("-f " +  '"' + generate_cross_split + '"') else ""} \
      ~{if defined(genome_assembly_gaps) then ("-g " +  '"' + genome_assembly_gaps + '"') else ""} \
      ~{if (interpolate_nans) then "-i" else ""} \
      ~{if defined(sequence_length) then ("-l " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_parallel_processes) then ("-p " +  '"' + number_parallel_processes + '"') else ""} \
      ~{if (peaks) then "--peaks" else ""} \
      ~{if defined(sequences_tfrecord_file) then ("-r " +  '"' + sequences_tfrecord_file + '"') else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(snap) then ("--snap " +  '"' + snap + '"') else ""} \
      ~{if (split_test) then "--split_test" else ""} \
      ~{if defined(stride_train) then ("--stride_train " +  '"' + stride_train + '"') else ""} \
      ~{if defined(stride_test) then ("--stride_test " +  '"' + stride_test + '"') else ""} \
      ~{if defined(proportion_data_testing) then ("-t " +  '"' + proportion_data_testing + '"') else ""} \
      ~{if defined(unmappable_regions_bed) then ("-u " +  '"' + unmappable_regions_bed + '"') else ""} \
      ~{if defined(u_map_t) then ("--umap_t " +  '"' + u_map_t + '"') else ""} \
      ~{if defined(u_map_clip) then ("--umap_clip " +  '"' + u_map_clip + '"') else ""} \
      ~{if (u_map_tfr) then "--umap_tfr" else ""} \
      ~{if defined(sum_pool_width) then ("-w " +  '"' + sum_pool_width + '"') else ""} \
      ~{if defined(proportion_data_validation) then ("-v " +  '"' + proportion_data_validation + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    break: "Break in half contigs above length [Default: 786432]"
    crop: "Crop bp off each end [Default: 0]"
    downsample_the_segments: "Down-sample the segments"
    generate_cross_split: "Generate cross fold split [Default: none]"
    genome_assembly_gaps: "Genome assembly gaps BED [Default: none]"
    interpolate_nans: "Interpolate NaNs [Default: False]"
    sequence_length: "Sequence length [Default: 131072]"
    limit: "Limit to segments that overlap regions in a BED file"
    local: "Run jobs locally as opposed to on SLURM [Default:\\nFalse]"
    output_directory: "Output directory [Default: data_out]"
    number_parallel_processes: "Number parallel processes [Default: none]"
    peaks: "Create contigs only from peaks [Default: False]"
    sequences_tfrecord_file: "Sequences per TFRecord file [Default: 256]"
    restart: "Continue progress from midpoint. [Default: False]"
    seed: "Random seed [Default: 44]"
    snap: "Snap sequences to multiple of the given value\\n[Default: 1]"
    split_test: "Exit after split. [Default: False]"
    stride_train: "Stride to advance train sequences [Default:\\nseq_length]"
    stride_test: "Stride to advance valid and test sequences [Default:\\nseq_length]"
    proportion_data_testing: "Proportion of the data for testing [Default: 0.05]"
    unmappable_regions_bed: "Unmappable regions in BED format"
    u_map_t: "Remove sequences with more than this unmappable bin %\\n[Default: 0.5]"
    u_map_clip: "Clip values at unmappable positions to distribution\\nquantiles, eg 0.25. [Default: 1]"
    u_map_tfr: "Save umap array into TFRecords [Default: False]"
    sum_pool_width: "Sum pool width [Default: 128]"
    proportion_data_validation: "Proportion of the data for validation [Default: 0.05]"
    fast_a_file: ""
    targets_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}