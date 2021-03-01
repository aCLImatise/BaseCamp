version 1.0

task Clever {
  input {
    Boolean? sorted
    Boolean? use_x_a
    Boolean? use_mapq
    Int? number_threads_use
    Boolean? delete_old_result
    Directory? working_directory_default
    Boolean? recompute_tags_ignored
    Boolean? keep_working_directory
    Boolean? read_groups_account
    String? additional_parameters_passed
    String? additional_parameters_postprocessing
    Boolean? create_plot_length
    String? chromosome
    File bam_file
  }
  command <<<
    clever \
      ~{bam_file} \
      ~{if (sorted) then "--sorted" else ""} \
      ~{if (use_x_a) then "--use_xa" else ""} \
      ~{if (use_mapq) then "--use_mapq" else ""} \
      ~{if defined(number_threads_use) then ("-T " +  '"' + number_threads_use + '"') else ""} \
      ~{if (delete_old_result) then "-f" else ""} \
      ~{if defined(working_directory_default) then ("-w " +  '"' + working_directory_default + '"') else ""} \
      ~{if (recompute_tags_ignored) then "-a" else ""} \
      ~{if (keep_working_directory) then "-k" else ""} \
      ~{if (read_groups_account) then "-r" else ""} \
      ~{if defined(additional_parameters_passed) then ("-C " +  '"' + additional_parameters_passed + '"') else ""} \
      ~{if defined(additional_parameters_postprocessing) then ("-P " +  '"' + additional_parameters_postprocessing + '"') else ""} \
      ~{if (create_plot_length) then "-I" else ""} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sorted: "Input BAM file is sorted by position. Note that this\\nrequires alternative alignments to be given as XA tags\\n(like produced by BWA, stampy, etc.)."
    use_x_a: "Interprete XA tags in input BAM file. This option\\nSHOULD be given for mappers writing XA tags like BWA\\nand stampy."
    use_mapq: "Use MAPQ value instead re-computing posteriors."
    number_threads_use: "Number of threads to use (default=1)."
    delete_old_result: "Delete old result and working directory first (if\\npresent)."
    working_directory_default: "Working directory (default: <result-directory>/work)."
    recompute_tags_ignored: "Do not (re-)compute AS tags. If given, the argument\\n<ref.fasta(.gz)> is ignored."
    keep_working_directory: "Keep working directory (default: delete directory when\\nfinished)."
    read_groups_account: "Take read groups into account (multi sample mode)."
    additional_parameters_passed: "Additional parameters to be passed to the CLEVER core\\nalgorithm. Call \\\"clever-core\\\" without parameters for a\\nlist of options."
    additional_parameters_postprocessing: "Additional parameters for postprocessing results. Call\\n\\\"postprocess-predictions\\\" without parameters for a\\nlist of options."
    create_plot_length: "Create a plot of internal segment size distribution\\n(=fragment size - 2x read length). Also displays the\\nestimated normal distribution (requires NumPy and\\nmatplotlib)."
    chromosome: "Only process given chromosome (default: all).\\n"
    bam_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}