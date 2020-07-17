version 1.0

task SubsampleBam {
  input {
    String? output_prefix
    Array[String] regions
    String? profile
    String? orientation
    String? threads
    String? quality
    String? accuracy
    String? coverage
    Int? length
    Boolean? any_fail
    Boolean? all_fail
    String? patience
    String? stride
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
      ~{true="--any_fail" false="" any_fail} \
      ~{true="--all_fail" false="" all_fail} \
      ~{if defined(patience) then ("--patience " +  '"' + patience + '"') else ""} \
      ~{if defined(stride) then ("--stride " +  '"' + stride + '"') else ""} \
      ~{true="--proportional" false="" proportional} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  parameter_meta {
    output_prefix: "Output prefix (default: sub_sampled)"
    regions: "Only process given regions. (default: None)"
    profile: "Stride in genomic coordinates for depth profile. (default: 1000)"
    orientation: "Sample only forward or reverse reads. (default: None)"
    threads: "Number of threads to use. (default: -1)"
    quality: "Filter reads by mean qscore. (default: None)"
    accuracy: "Filter reads by accuracy. (default: None)"
    coverage: "Filter reads by coverage (what fraction of the read aligns). (default: None)"
    length: "Filter reads by read length. (default: None)"
    any_fail: "Exit with an error if any region has insufficient coverage. (default: False)"
    all_fail: "Exit with an error if all regions have insufficient coverage. (default: False)"
    patience: "Maximum iterations with no change in median coverage before aborting. (default: 5)"
    stride: "Stride in genomic coordinates when searching for new reads. Smaller can lead to more compact pileup. (default: 1000)"
    proportional: "Activate proportional sampling, thus keeping depth variations of the pileup. (default: False)"
    seed: "Random seed for proportional downsampling of reads. (default: None)"
    bam: "input bam file."
    depth: "Target depth."
  }
}