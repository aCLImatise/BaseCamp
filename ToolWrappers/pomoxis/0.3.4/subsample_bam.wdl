version 1.0

task SubsampleBam {
  input {
    String? output_prefix
    Array[String] regions
    Int? profile
    String? orientation
    Int? threads
    String? quality
    String? accuracy
    String? coverage
    Int? length
    Boolean? any_fail
    Boolean? all_fail
    Int? patience
    Int? stride
    Boolean? proportional
    String? seed
    String bam
    String depth
  }
  command <<<
    subsample_bam \
      ~{bam} \
      ~{depth} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(orientation) then ("--orientation " +  '"' + orientation + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (any_fail) then "--any_fail" else ""} \
      ~{if (all_fail) then "--all_fail" else ""} \
      ~{if defined(patience) then ("--patience " +  '"' + patience + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{if (proportional) then "--proportional" else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_prefix: "Output prefix (default: sub_sampled)"
    regions: "Only process given regions. (default: None)"
    profile: "Stride in genomic coordinates for depth profile.\\n(default: 1000)"
    orientation: "Sample only forward or reverse reads. (default: None)"
    threads: "Number of threads to use. (default: -1)"
    quality: "Filter reads by mean qscore. (default: None)"
    accuracy: "Filter reads by accuracy. (default: None)"
    coverage: "Filter reads by coverage (what fraction of the read\\naligns). (default: None)"
    length: "Filter reads by read length. (default: None)"
    any_fail: "Exit with an error if any region has insufficient\\ncoverage. (default: False)"
    all_fail: "Exit with an error if all regions have insufficient\\ncoverage. (default: False)"
    patience: "Maximum iterations with no change in median coverage\\nbefore aborting. (default: 5)"
    stride: "Stride in genomic coordinates when searching for new\\nreads. Smaller can lead to more compact pileup.\\n(default: 1000)"
    proportional: "Activate proportional sampling, thus keeping depth\\nvariations of the pileup. (default: False)"
    seed: "Random seed for proportional downsampling of reads.\\n(default: None)\\n"
    bam: "input bam file."
    depth: "Target depth."
  }
  output {
    File out_stdout = stdout()
  }
}