version 1.0

task RunMisopy {
  input {
    File? compute_gene_psi
    Int? paired_end
    File? compute_genes_from_file
    Directory? compare_samples
    Int? comparison_labels
    File? summarize_samples
    File? summary_label
    Int? use_cluster
    File? settings_filename
    Int? overhang_len
    File? use_compressed
    File? view_gene
  }
  command <<<
    run_miso_py \
      ~{if defined(compute_gene_psi) then ("--compute-gene-psi " +  '"' + compute_gene_psi + '"') else ""} \
      ~{if defined(paired_end) then ("--paired-end " +  '"' + paired_end + '"') else ""} \
      ~{if defined(compute_genes_from_file) then ("--compute-genes-from-file " +  '"' + compute_genes_from_file + '"') else ""} \
      ~{if defined(compare_samples) then ("--compare-samples " +  '"' + compare_samples + '"') else ""} \
      ~{if defined(comparison_labels) then ("--comparison-labels " +  '"' + comparison_labels + '"') else ""} \
      ~{if defined(summarize_samples) then ("--summarize-samples " +  '"' + summarize_samples + '"') else ""} \
      ~{if defined(summary_label) then ("--summary-label " +  '"' + summary_label + '"') else ""} \
      ~{if defined(use_cluster) then ("--use-cluster " +  '"' + use_cluster + '"') else ""} \
      ~{if defined(settings_filename) then ("--settings-filename " +  '"' + settings_filename + '"') else ""} \
      ~{if defined(overhang_len) then ("--overhang-len " +  '"' + overhang_len + '"') else ""} \
      ~{if defined(use_compressed) then ("--use-compressed " +  '"' + use_compressed + '"') else ""} \
      ~{if defined(view_gene) then ("--view-gene " +  '"' + view_gene + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    compute_gene_psi: "Compute Psi using for a given multi-isoform gene.\\nExpects four arguments: the first is a gene ID or set\\nof comma-separated (no spaces) gene IDs, the second is\\na GFF indexed file with the gene information, the\\nthird is a sorted and indexed BAM file with reads\\naligned to the gene, and the fourth is an output\\ndirectory."
    paired_end: "Run in paired-end mode.  Takes a mean and standard\\ndeviation for the fragment length distribution\\n(assumed to have discretized normal form.)"
    compute_genes_from_file: "Runs on a set of genes from a file. Takes as input:\\n(1) a two-column tab-delimited file, where column 1 is\\nthe event ID (ID field from GFF) and the second column\\nis the path to the indexed GFF file for that event.\\nMISO will run on all the events described in the file,\\n(2) a sorted, indexed BAM file to run on, and (3) a\\ndirectory to output results to."
    compare_samples: "Compute comparison statistics between the two given\\nsamples. Expects three directories: the first is\\nsample1's MISO output, the second is sample2's MISO\\noutput, and the third is the directory where results\\nof the sample comparison will be outputted."
    comparison_labels: "Use these labels for the sample comparison made by\\n--compare-samples. Takes two arguments: the label for\\nsample 1 and the label for sample 2, where sample 1\\nand sample 2 correspond to the order of samples given\\nto --compare-samples."
    summarize_samples: "Compute summary statistics of the given set of\\nsamples. Expects a directory with MISO output and a\\ndirectory to output summary file to."
    summary_label: "Label for MISO summary file. If not given, uses\\nbasename of MISO output directory."
    use_cluster: "Size (in number of events) of each job to chunk events\\nfile into. Only applies when running on cluster."
    settings_filename: "Filename specifying MISO settings."
    overhang_len: "Event type of two-isoform events (e.g. 'SE', 'RI',\\n'A3SS', ...)"
    use_compressed: "Use compressed event IDs. Takes as input a\\ngenes_to_filenames.shelve file produced by the\\nindex_gff script."
    view_gene: "View the contents of a gene/event that has been\\nindexed. Takes as input an indexed (.pickle) filename.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_compute_gene_psi = "${in_compute_gene_psi}"
    Directory out_compare_samples = "${in_compare_samples}"
    File out_summarize_samples = "${in_summarize_samples}"
    File out_summary_label = "${in_summary_label}"
  }
}