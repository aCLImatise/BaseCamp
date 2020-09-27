version 1.0

task TomboWriteWiggles {
  input {
    Array[Int] fast_five_based_irs
    Array[Int] control_fast_five_based_irs
    File? statistics_filename
    String? wiggle_basename
    String? wiggle_types
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo write_wiggles \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(wiggle_basename) then ("--wiggle-basename " +  '"' + wiggle_basename + '"') else ""} \
      ~{if defined(wiggle_types) then ("--wiggle-types " +  '"' + wiggle_types + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Control set of directories containing fast5 files.\\nThese reads should contain only standard nucleotides."
    statistics_filename: "File to save/load base by base statistics."
    wiggle_basename: "Basename for output wiggle files. Two files (plus and\\nminus strand) will be produced for each --wiggle-types\\nsupplied. Filenames formatted as \\\"[wiggle-basename\\n].[wiggle-type].[sample|control]?.[plus|minus].wig\\\".\\nDefault: tombo_results"
    wiggle_types: "[{coverage,fraction,signal,signal_sd,length,stat,mt_stat,difference} ...]\\nData types of wiggles to produce. Default: \\\"coverage\\nfraction\\\""
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}