version 1.0

task TomboWriteMostSignificantFasta {
  input {
    File? file_saveload_base
    Array[Int] fast_five_based_irs
    File? genome_fast_a
    Boolean? statistic_order
    Int? num_regions
    Int? num_bases
    Int? q_value_threshold
    File? sequences_filename
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String var_11
  }
  command <<<
    tombo write_most_significant_fasta \
      ~{var_11} \
      ~{if defined(file_saveload_base) then ("--statistics-filename " +  '"' + file_saveload_base + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(genome_fast_a) then ("--genome-fasta " +  '"' + genome_fast_a + '"') else ""} \
      ~{if (statistic_order) then "--statistic-order" else ""} \
      ~{if defined(num_regions) then ("--num-regions " +  '"' + num_regions + '"') else ""} \
      ~{if defined(num_bases) then ("--num-bases " +  '"' + num_bases + '"') else ""} \
      ~{if defined(q_value_threshold) then ("--q-value-threshold " +  '"' + q_value_threshold + '"') else ""} \
      ~{if defined(sequences_filename) then ("--sequences-filename " +  '"' + sequences_filename + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_saveload_base: "File to save/load base by base statistics."
    fast_five_based_irs: "Directories containing fast5 files."
    genome_fast_a: "FASTA file used to re-squiggle. For faster sequence\\naccess."
    statistic_order: "Order selected locations by p-values or mean\\nlikelihood ratio. Default: fraction of significant\\nreads."
    num_regions: "Number of regions to plot. Default: 100"
    num_bases: "Number of bases to plot/output. Default: 21"
    q_value_threshold: "Plot all regions below provied q-value. Overrides\\n--num-regions."
    sequences_filename: "File for sequences from selected regions. Sequences\\nwill be stored in FASTA format. Default:\\ntombo_results.significant_regions.fasta."
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
    var_11: "[--fast5-basedirs FAST5_BASEDIRS [FAST5_BASEDIRS ...]]"
  }
  output {
    File out_stdout = stdout()
  }
}