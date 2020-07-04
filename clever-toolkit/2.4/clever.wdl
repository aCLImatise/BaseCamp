version 1.0

task Clever {
  input {
    Boolean? sorted
    Boolean? use_x_a
    Boolean? use_mapq
    String? number_use_default
    Boolean? delete_old_result
    String? working_directory_default
    Boolean? recompute_as_tags
    Boolean? keep_default_directory
    Boolean? take_read_groups
    String? additional_parameters_passed
    String? additional_parameters_postprocessing
    Boolean? create_plot_internal
    String? chromosome
    String bam_file
  }
  command <<<
    clever \
      ~{bam_file} \
      ~{true="--sorted" false="" sorted} \
      ~{true="--use_xa" false="" use_x_a} \
      ~{true="--use_mapq" false="" use_mapq} \
      ~{if defined(number_use_default) then ("-T " +  '"' + number_use_default + '"') else ""} \
      ~{true="-f" false="" delete_old_result} \
      ~{if defined(working_directory_default) then ("-w " +  '"' + working_directory_default + '"') else ""} \
      ~{true="-a" false="" recompute_as_tags} \
      ~{true="-k" false="" keep_default_directory} \
      ~{true="-r" false="" take_read_groups} \
      ~{if defined(additional_parameters_passed) then ("-C " +  '"' + additional_parameters_passed + '"') else ""} \
      ~{if defined(additional_parameters_postprocessing) then ("-P " +  '"' + additional_parameters_postprocessing + '"') else ""} \
      ~{true="-I" false="" create_plot_internal} \
      ~{if defined(chromosome) then ("--chromosome " +  '"' + chromosome + '"') else ""}
  >>>
  parameter_meta {
    sorted: "Input BAM file is sorted by position. Note that this requires alternative alignments to be given as XA tags (like produced by BWA, stampy, etc.)."
    use_x_a: "Interprete XA tags in input BAM file. This option SHOULD be given for mappers writing XA tags like BWA and stampy."
    use_mapq: "Use MAPQ value instead re-computing posteriors."
    number_use_default: "Number of threads to use (default=1)."
    delete_old_result: "Delete old result and working directory first (if present)."
    working_directory_default: "Working directory (default: <result-directory>/work)."
    recompute_as_tags: "Do not (re-)compute AS tags. If given, the argument <ref.fasta(.gz)> is ignored."
    keep_default_directory: "Keep working directory (default: delete directory when finished)."
    take_read_groups: "Take read groups into account (multi sample mode)."
    additional_parameters_passed: "Additional parameters to be passed to the CLEVER core algorithm. Call \"clever-core\" without parameters for a list of options."
    additional_parameters_postprocessing: "Additional parameters for postprocessing results. Call \"postprocess-predictions\" without parameters for a list of options."
    create_plot_internal: "Create a plot of internal segment size distribution (=fragment size - 2x read length). Also displays the estimated normal distribution (requires NumPy and matplotlib)."
    chromosome: "Only process given chromosome (default: all)."
    bam_file: ""
  }
}