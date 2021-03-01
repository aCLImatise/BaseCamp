version 1.0

task TomboTextOutputBrowserFiles {
  input {
    Array[Int] fast_five_based_irs
    Array[Int] control_fast_five_based_irs
    File? statistics_filename
    File? genome_fast_a
    Array[String] motif_descriptions
    File? browser_file_basename
    String? file_types
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo text_output browser_files \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(motif_descriptions) then ("--motif-descriptions " +  '"' + motif_descriptions + '"') else ""} \
      ~{if defined(browser_file_basename) then ("--browser-file-basename " +  '"' + browser_file_basename + '"') else ""} \
      ~{if defined(file_types) then ("--file-types " +  '"' + file_types + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control\\nreads, containing only canonical nucleotides."
    statistics_filename: "File to save/load genomic base anchored statistics."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    motif_descriptions: "Ground truth, motif centered, modified base\\ndescriptions for output filtering. Format descriptions\\nas: \\\"motif:mod_pos:name\\\". The mod_pos indicates the\\nmodified base within the motif (1-based index).\\nExample: CCWGG:2:dcm_5mC GATC:2:dam_6mA would filter\\noutput for identification of E. coli dam and dcm\\nmethylation."
    browser_file_basename: "Basename for output browser files. Two files (plus and\\nminus strand) will be produced for each --file-types\\nsupplied. Filenames formatted as \\\"[browser-file-\\nbasename].[file-\\ntype].[sample|control]?.[plus|minus].[wig|bedgraph]\\\".\\nDefault: tombo_results"
    file_types: "[{coverage,valid_coverage,fraction,dampened_fraction,signal,signal_sd,dwell,difference,statistic} ...]\\nData types of genome browser files to produce.\\nProduced coverage files are in bedGraph format, while\\nall other file types will be in wiggle format\\n(https://genome.ucsc.edu/goldenpath/help/wiggle.html).\\nDefault: \\\"coverage\\\""
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
    File out_browser_file_basename = "${in_browser_file_basename}"
  }
}