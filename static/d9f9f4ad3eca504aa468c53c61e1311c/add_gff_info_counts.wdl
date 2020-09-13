version 1.0

task AddgffinfoCounts {
  input {
    Boolean? verbose
    String? samples
    File? count_files
    Boolean? fp_kms
    Boolean? feature_counts
    Boolean? progress
    String? input_file
    String? output_file
  }
  command <<<
    add_gff_info counts \
      ~{input_file} \
      ~{output_file} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(samples) then ("--samples " +  '"' + samples + '"') else ""} \
      ~{if defined(count_files) then ("--count-files " +  '"' + count_files + '"') else ""} \
      ~{if (fp_kms) then "--fpkms" else ""} \
      ~{if (feature_counts) then "--featureCounts" else ""} \
      ~{if (progress) then "--progress" else ""}
  >>>
  parameter_meta {
    verbose: ""
    samples: "Sample names, in the same order as the count files\\n[required]"
    count_files: "Count file(s)  [required]"
    fp_kms: "If the counts are FPKMS"
    feature_counts: "If the counts files are from featureCounts"
    progress: "Shows Progress Bar"
    input_file: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}