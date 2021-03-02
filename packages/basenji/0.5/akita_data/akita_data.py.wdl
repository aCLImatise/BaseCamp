version 1.0

task AkitaDatapy {
  input {
    String? set_blacklist_nucleotides
    Int? break
    Int? crop
    Int? positions_diagonal_ignore
    String? generate_cross_split
    File? genome_assembly_gaps
    Int? gaussian_kernel_stddev
    Int? sequence_length
    File? limit
    Boolean? local
    Directory? output_directory
    Int? number_parallel_processes
    File? sequences_tfrecord_file
    Boolean? restart
    String? sample
    Int? seed
    String? stride_train
    String? stride_test
    Boolean? split_test
    Float? proportion_data_testing
    String? unmappable_regions_bed
    Int? u_map_midpoints
    Float? u_map_t
    String? u_map_set
    Int? sum_pool_width
    Float? proportion_data_validation
    String? snap
    Boolean? as_obs_exp
    Boolean? global_obs_exp
    Boolean? no_log
    String fast_a_file
    String targets_file
  }
  command <<<
    akita_data_py \
      ~{fast_a_file} \
      ~{targets_file} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(break) then ("--break " +  '"' + break + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if defined(positions_diagonal_ignore) then ("-d " +  '"' + positions_diagonal_ignore + '"') else ""} \
      ~{if defined(generate_cross_split) then ("-f " +  '"' + generate_cross_split + '"') else ""} \
      ~{if defined(genome_assembly_gaps) then ("-g " +  '"' + genome_assembly_gaps + '"') else ""} \
      ~{if defined(gaussian_kernel_stddev) then ("-k " +  '"' + gaussian_kernel_stddev + '"') else ""} \
      ~{if defined(sequence_length) then ("-l " +  '"' + sequence_length + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_parallel_processes) then ("-p " +  '"' + number_parallel_processes + '"') else ""} \
      ~{if defined(sequences_tfrecord_file) then ("-r " +  '"' + sequences_tfrecord_file + '"') else ""} \
      ~{if (restart) then "--restart" else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(stride_train) then ("--stride_train " +  '"' + stride_train + '"') else ""} \
      ~{if defined(stride_test) then ("--stride_test " +  '"' + stride_test + '"') else ""} \
      ~{if (split_test) then "--split_test" else ""} \
      ~{if defined(proportion_data_testing) then ("-t " +  '"' + proportion_data_testing + '"') else ""} \
      ~{if defined(unmappable_regions_bed) then ("-u " +  '"' + unmappable_regions_bed + '"') else ""} \
      ~{if defined(u_map_midpoints) then ("--umap_midpoints " +  '"' + u_map_midpoints + '"') else ""} \
      ~{if defined(u_map_t) then ("--umap_t " +  '"' + u_map_t + '"') else ""} \
      ~{if defined(u_map_set) then ("--umap_set " +  '"' + u_map_set + '"') else ""} \
      ~{if defined(sum_pool_width) then ("-w " +  '"' + sum_pool_width + '"') else ""} \
      ~{if defined(proportion_data_validation) then ("-v " +  '"' + proportion_data_validation + '"') else ""} \
      ~{if defined(snap) then ("--snap " +  '"' + snap + '"') else ""} \
      ~{if (as_obs_exp) then "--as_obsexp" else ""} \
      ~{if (global_obs_exp) then "--global_obsexp" else ""} \
      ~{if (no_log) then "--no_log" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    break: "Break in half contigs above length [Default: 8388608]"
    crop: "Crop bp off each end [Default: 0]"
    positions_diagonal_ignore: "Positions on the diagonal to ignore [Default: 2]"
    generate_cross_split: "Generate cross fold split [Default: none]"
    genome_assembly_gaps: "Genome assembly gaps BED [Default: none]"
    gaussian_kernel_stddev: "Gaussian kernel stddev to smooth values [Default: 0]"
    sequence_length: "Sequence length [Default: 131072]"
    limit: "Limit to segments that overlap regions in a BED file"
    local: "Run jobs locally as opposed to on SLURM [Default:\\nFalse]"
    output_directory: "Output directory [Default: data_out]"
    number_parallel_processes: "Number parallel processes [Default: none]"
    sequences_tfrecord_file: "Sequences per TFRecord file [Default: 128]"
    restart: "Continue progress from midpoint. [Default: False]"
    sample: "Down-sample the segments"
    seed: "Random seed [Default: 44]"
    stride_train: "Stride to advance train sequences [Default:\\nseq_length]"
    stride_test: "Stride to advance valid and test sequences [Default:\\nseq_length]"
    split_test: "Exit after split. [Default: False]"
    proportion_data_testing: "Proportion of the data for testing [Default: 0.05]"
    unmappable_regions_bed: "Unmappable regions in BED format"
    u_map_midpoints: "Regions with midpoints to exclude in BED format. Used\\nfor 4C/HiC."
    u_map_t: "Remove sequences with more than this unmappable bin %\\n[Default: 0.3]"
    u_map_set: "Set unmappable regions to this percentile in the\\nsequences' distribution of values"
    sum_pool_width: "Sum pool width [Default: 128]"
    proportion_data_validation: "Proportion of the data for validation [Default: 0.05]"
    snap: "snap stride to multiple for binned targets in bp, if\\nnot None seq_length must be a multiple of snap"
    as_obs_exp: "save targets as obsexp profiles"
    global_obs_exp: "use pre-calculated by-chromosome obs/exp"
    no_log: "do not take log for obs/exp"
    fast_a_file: ""
    targets_file: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}