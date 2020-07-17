version 1.0

task TomboTextOutputBrowserFiles {
  input {
    Array[String] fast_five_based_irs
    Array[String] control_fast_five_based_irs
    String? statistics_filename
    String? genome_fast_a
    Array[String] motif_descriptions
    String? corrected_group
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
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control reads, containing only canonical nucleotides."
    statistics_filename: "File to save/load genomic base anchored statistics."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence access."
    motif_descriptions: "Ground truth, motif centered, modified base descriptions for output filtering. Format descriptions as: \"motif:mod_pos:name\". The mod_pos indicates the modified base within the motif (1-based index). Example: CCWGG:2:dcm_5mC GATC:2:dam_6mA would filter output for identification of E. coli dam and dcm methylation."
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}