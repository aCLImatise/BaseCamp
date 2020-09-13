version 1.0

task HalRandGen {
  input {
    Boolean? preset
    Float? mean_degree
    Float? max_branch_length
    Int? max_genomes
    Int? min_segment_length
    Int? max_segment_length
    Int? max_segments
    Int? min_segments
    Int? hdf_five_chunk
    Int? hdf_five_compression
    Int? seed
    String hal_stats
    File path_of_ouput_hal_alignment_file
  }
  command <<<
    halRandGen \
      ~{hal_stats} \
      ~{path_of_ouput_hal_alignment_file} \
      ~{if (preset) then "--preset" else ""} \
      ~{if defined(mean_degree) then ("--meanDegree " +  '"' + mean_degree + '"') else ""} \
      ~{if defined(max_branch_length) then ("--maxBranchLength " +  '"' + max_branch_length + '"') else ""} \
      ~{if defined(max_genomes) then ("--maxGenomes " +  '"' + max_genomes + '"') else ""} \
      ~{if defined(min_segment_length) then ("--minSegmentLength " +  '"' + min_segment_length + '"') else ""} \
      ~{if defined(max_segment_length) then ("--maxSegmentLength " +  '"' + max_segment_length + '"') else ""} \
      ~{if defined(max_segments) then ("--maxSegments " +  '"' + max_segments + '"') else ""} \
      ~{if defined(min_segments) then ("--minSegments " +  '"' + min_segments + '"') else ""} \
      ~{if defined(hdf_five_chunk) then ("--hdf5Chunk " +  '"' + hdf_five_chunk + '"') else ""} \
      ~{if defined(hdf_five_compression) then ("--hdf5Compression " +  '"' + hdf_five_compression + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    preset: "<small, medium, big, large> [medum]"
    mean_degree: "[1.25]"
    max_branch_length: "[0.7]"
    max_genomes: "[20]"
    min_segment_length: "[2]"
    max_segment_length: "[50]"
    max_segments: "[50000]"
    min_segments: "[1000]"
    hdf_five_chunk: "[2000000]"
    hdf_five_compression: "[9]"
    seed: "[system time]"
    hal_stats: ""
    path_of_ouput_hal_alignment_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}