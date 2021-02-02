version 1.0

task TomboPlotPerRead {
  input {
    Array[Int] fast_five_based_irs
    Array[String] genome_locations
    File? tombo_model_filename
    File? alternate_model_filename
    Int? fishers_method_context
    Boolean? plot_standard_model
    String? plot_alternate_model
    Int? num_reads
    Int? num_bases
    Boolean? box_center
    File? pdf_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo plot_per_read \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(genome_locations) then ("--genome-locations " +  '"' + genome_locations + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(alternate_model_filename) then ("--alternate-model-filename " +  '"' + alternate_model_filename + '"') else ""} \
      ~{if defined(fishers_method_context) then ("--fishers-method-context " +  '"' + fishers_method_context + '"') else ""} \
      ~{if (plot_standard_model) then "--plot-standard-model" else ""} \
      ~{if defined(plot_alternate_model) then ("--plot-alternate-model " +  '"' + plot_alternate_model + '"') else ""} \
      ~{if defined(num_reads) then ("--num-reads " +  '"' + num_reads + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if (box_center) then "--box-center" else ""} \
      ~{if defined(pdf_filename) then ("--pdf-filename " +  '"' + pdf_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    genome_locations: "Genomic locations at which to plot signal. Format\\nlocations as \\\"chrm:position[:strand]\\n[chrm2:position2[:strand2] ...]\\\" (strand not\\napplicable for all applications)"
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    alternate_model_filename: "Tombo model for alternative likelihood ratio\\nsignificance testing."
    fishers_method_context: "Number of context bases up and downstream over which\\nto compute Fisher's method combined p-values. Note:\\nNot applicable for alternative model likelihood ratio\\ntests. Default: 1."
    plot_standard_model: "Add default standard model distribution to the plot."
    plot_alternate_model: "Add alternative model distribution to the plot."
    num_reads: "Number of reads to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 51"
    box_center: "Plot a box around the central base."
    pdf_filename: "PDF filename to store plot(s). Default:\\ntombo_results.per_read_stats.pdf"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}