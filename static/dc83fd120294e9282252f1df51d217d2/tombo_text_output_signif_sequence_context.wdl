version 1.0

task TomboTextOutputSignifSequenceContext {
  input {
    String? statistics_filename
    String? genome_fast_a
    Array[String] fast_five_based_irs
    String? num_regions
    String? num_bases
    String? sequences_filename
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo text_output signif_sequence_context \
      ~{if defined(statistics_filename) then ("--statistics-filename " +  '"' + statistics_filename + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(sequences_filename) then ("--sequences-filename " +  '"' + sequences_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    statistics_filename: "File to save/load genomic base anchored statistics."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence access."
    fast_five_based_irs: "Directories containing fast5 files."
    num_regions: "Number of regions to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 15"
    sequences_filename: "File for sequences from selected regions. Sequences will be stored in FASTA format. Default: tombo_results.significant_regions.fasta."
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}