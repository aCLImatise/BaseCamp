version 1.0

task CompareMiso {
  input {
    String? compare_samples
    String? comparison_labels
    String? use_compressed
  }
  command <<<
    compare_miso \
      ~{if defined(compare_samples) then ("--compare-samples " +  '"' + compare_samples + '"') else ""} \
      ~{if defined(comparison_labels) then ("--comparison-labels " +  '"' + comparison_labels + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""}
  >>>
  parameter_meta {
    compare_samples: "Compute comparison statistics between the two given samples. Expects three directories: the first is sample1's MISO output, the second is sample2's MISO output, and the third is the directory where results of the sample comparison will be outputted."
    comparison_labels: "Use these labels for the sample comparison made by --compare-samples. Takes two arguments: the label for sample 1 and the label for sample 2, where sample 1 and sample 2 correspond to the order of samples given to --compare-samples."
    use_compressed: "Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced by the index_gff script."
  }
}