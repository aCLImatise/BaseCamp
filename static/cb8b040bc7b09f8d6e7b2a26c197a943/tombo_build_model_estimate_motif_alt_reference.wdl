version 1.0

task TomboBuildModelEstimateMotifAltReference {
  input {
    String? alternate_model_filename
    String? alternate_model_name
    String? motif_description
    Array[String] fast_five_based_irs
    String? upstream_bases
    String? downstream_bases
    Int? minimum_km_er_observations
    String? valid_locations_filename
    Int? minimum_test_reads
    String? coverage_threshold
    String? multiprocess_region_size
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo build_model estimate_motif_alt_reference \
      ~{if defined(alternate_model_filename) then ("--alternate-model-filename " +  '"' + alternate_model_filename + '"') else ""} \
      ~{if defined(alternate_model_name) then ("--alternate-model-name " +  '"' + alternate_model_name + '"') else ""} \
      ~{if defined(motif_description) then ("--motif-description " +  '"' + motif_description + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(upstream_bases) then ("--upstream-bases " +  '"' + upstream_bases + '"') else ""} \
      ~{if defined(downstream_bases) then ("--downstream-bases " +  '"' + downstream_bases + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(valid_locations_filename) then ("--valid-locations-filename " +  '"' + valid_locations_filename + '"') else ""} \
      ~{if defined(minimum_test_reads) then ("--minimum-test-reads " +  '"' + minimum_test_reads + '"') else ""} \
      ~{if defined(coverage_threshold) then ("--coverage-threshold " +  '"' + coverage_threshold + '"') else ""} \
      ~{if defined(multiprocess_region_size) then ("--multiprocess-region-size " +  '"' + multiprocess_region_size + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    alternate_model_filename: "Tombo model for alternative likelihood ratio significance testing."
    alternate_model_name: "A short name to associate with this alternate model (e.g. 5mC, 6mA, etc.). This text will be included in output filenames when this model is used for testing."
    motif_description: "Motif containing alternate-base. All positions with this motif should be modified (or filtered with [--valid-locations-filename]). Format descriptions as: \"motif:mod_pos\". mod_pos indicates the alternate-base within the motif (1-based index). Example: \"CG:1\" to train a CpG methylation model."
    fast_five_based_irs: "Directories containing fast5 files."
    upstream_bases: "Upstream bases in k-mer. Default: 1"
    downstream_bases: "Downstream bases in k-mer. Default: 2"
    minimum_km_er_observations: "Number of each k-mer observations required in order to produce a reference (genomic locations for standard reference and per-read for alternative reference). Default: 1"
    valid_locations_filename: "Bed format file containing single base locations of valid sites. Should contain 6 fields including strand. E.g. modified base locations."
    minimum_test_reads: "Number of reads required at a position to perform significance testing or contribute to model estimation. Default: 10"
    coverage_threshold: "Maximum mean coverage per region when estimating k-mer model (limits compute time for deep samples). Default: 100"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic computation. For very deep samples a smaller value is recommmended in order to control memory consumption. Default: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}