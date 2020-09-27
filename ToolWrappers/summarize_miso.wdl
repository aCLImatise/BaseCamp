version 1.0

task SummarizeMiso {
  input {
    File? summarize_samples
    File? summary_label
    File? use_compressed
  }
  command <<<
    summarize_miso \
      ~{if defined(summarize_samples) then ("--summarize-samples " +  '"' + summarize_samples + '"') else ""} \
      ~{if defined(summary_label) then ("--summary-label " +  '"' + summary_label + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""}
  >>>
  parameter_meta {
    summarize_samples: "Compute summary statistics of the given set of\\nsamples. Expects a directory with MISO output and a\\ndirectory to output summary file to."
    summary_label: "Label for MISO summary file. If not given, uses\\nbasename of MISO output directory."
    use_compressed: "Use compressed event IDs. Takes as input a\\ngenes_to_filenames.shelve file produced by the\\nindex_gff script.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_summarize_samples = "${in_summarize_samples}"
    File out_summary_label = "${in_summary_label}"
  }
}