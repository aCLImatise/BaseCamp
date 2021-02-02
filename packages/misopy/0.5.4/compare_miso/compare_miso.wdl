version 1.0

task CompareMiso {
  input {
    Directory? compare_samples
    Int? comparison_labels
    File? use_compressed
  }
  command <<<
    compare_miso \
      ~{if defined(compare_samples) then ("--compare-samples " +  '"' + compare_samples + '"') else ""} \
      ~{if defined(comparison_labels) then ("--comparison-labels " +  '"' + comparison_labels + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""}
  >>>
  parameter_meta {
    compare_samples: "Compute comparison statistics between the two given\\nsamples. Expects three directories: the first is\\nsample1's MISO output, the second is sample2's MISO\\noutput, and the third is the directory where results\\nof the sample comparison will be outputted."
    comparison_labels: "Use these labels for the sample comparison made by\\n--compare-samples. Takes two arguments: the label for\\nsample 1 and the label for sample 2, where sample 1\\nand sample 2 correspond to the order of samples given\\nto --compare-samples."
    use_compressed: "Use compressed event IDs. Takes as input a\\ngenes_to_filenames.shelve file produced by the\\nindex_gff script.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_compare_samples = "${in_compare_samples}"
  }
}