version 1.0

task TomboBuildModelEstimateMotifAltReference {
  input {
    File? tombo_model_alternative
    Int? short_name_associate
    File? motif_containing_alternatebase
    Array[Int] fast_five_based_irs
    String? upstream_bases
    String? downstream_bases
    Int? minimum_km_er_observations
    File? valid_locations_filename
    Int? minimum_test_reads
    Int? coverage_threshold
    Int? multiprocess_region_size
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String _alternatemodelname
    String _motifdescription
    String _fastbasedirs
  }
  command <<<
    tombo build_model estimate_motif_alt_reference \
      ~{_alternatemodelname} \
      ~{_motifdescription} \
      ~{_fastbasedirs} \
      ~{if defined(tombo_model_alternative) then ("--alternate-model-filename " +  '"' + tombo_model_alternative + '"') else ""} \
      ~{if defined(short_name_associate) then ("--alternate-model-name " +  '"' + short_name_associate + '"') else ""} \
      ~{if defined(motif_containing_alternatebase) then ("--motif-description " +  '"' + motif_containing_alternatebase + '"') else ""} \
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
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tombo_model_alternative: "Tombo model for alternative likelihood ratio\\nsignificance testing."
    short_name_associate: "A short name to associate with this alternate model\\n(e.g. 5mC, 6mA, etc.). This text will be included in\\noutput filenames when this model is used for testing."
    motif_containing_alternatebase: "Motif containing alternate-base. All positions with\\nthis motif should be modified (or filtered with\\n[--valid-locations-filename]). Format descriptions as:\\n\\\"motif:mod_pos\\\". mod_pos indicates the alternate-base\\nwithin the motif (1-based index). Example: \\\"CG:1\\\" to\\ntrain a CpG methylation model."
    fast_five_based_irs: "Directories containing fast5 files."
    upstream_bases: "Upstream bases in k-mer. Default: 1"
    downstream_bases: "Downstream bases in k-mer. Default: 2"
    minimum_km_er_observations: "Number of each k-mer observations required in order to\\nproduce a reference (genomic locations for standard\\nreference and per-read for alternative reference).\\nDefault: 1"
    valid_locations_filename: "Bed format file containing single base locations of\\nvalid sites. Should contain 6 fields including strand.\\nE.g. modified base locations."
    minimum_test_reads: "Number of reads required at a position to perform\\nsignificance testing or contribute to model\\nestimation. Default: 10"
    coverage_threshold: "Maximum mean coverage per region when estimating k-mer\\nmodel (limits compute time for deep samples). Default:\\n100"
    multiprocess_region_size: "Size of regions over which to multiprocesses statistic\\ncomputation. For very deep samples a smaller value is\\nrecommmended in order to control memory consumption.\\nDefault: 10000"
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    _alternatemodelname: "--alternate-model-name"
    _motifdescription: "--motif-description"
    _fastbasedirs: "--fast5-basedirs"
  }
  output {
    File out_stdout = stdout()
  }
}