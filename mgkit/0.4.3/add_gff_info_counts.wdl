version 1.0

task AddGffInfoCounts {
  input {
    String? samples
    String? count_files
    Boolean? fp_kms
    Boolean? feature_counts
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add-gff-info counts \
      ~{input_file} \
      ~{output_file} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(count_files) then ("--count-files " +  '"' + count_files + '"') else ""} \
      ~{true="--fpkms" false="" fp_kms} \
      ~{true="--featureCounts" false="" feature_counts} \
      ~{true="--progress" false="" progress}
  >>>
  parameter_meta {
    samples: "Sample names, in the same order as the count files [required]"
    count_files: "Count file(s)  [required]"
    fp_kms: "If the counts are FPKMS"
    feature_counts: "If the counts files are from featureCounts"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
}