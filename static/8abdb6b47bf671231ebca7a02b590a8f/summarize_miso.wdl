version 1.0

task SummarizeMiso {
  input {
    String? summarize_samples
    String? summary_label
    String? use_compressed
  }
  command <<<
    summarize_miso \
      ~{if defined(summarize_samples) then ("--summarize-samples " +  '"' + summarize_samples + '"') else ""} \
      ~{if defined(summary_label) then ("--summary-label " +  '"' + summary_label + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""}
  >>>
  parameter_meta {
    summarize_samples: "Compute summary statistics of the given set of samples. Expects a directory with MISO output and a directory to output summary file to."
    summary_label: "Label for MISO summary file. If not given, uses basename of MISO output directory."
    use_compressed: "Use compressed event IDs. Takes as input a genes_to_filenames.shelve file produced by the index_gff script."
  }
}