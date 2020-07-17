version 1.0

task TomboBuildModelEstimateAltReference {
  input {
    String? alternate_model_filename
    String? alternate_model_name
    String? alternate_model_base
    Array[String] fast_five_based_irs
    Array[String] control_fast_five_based_irs
    String? alternate_density_filename
    String? control_density_filename
    Boolean? dna
    Boolean? rna
    String? tombo_model_filename
    String? alt_fraction_percentile
    String? kernel_density_bandwidth
    Int? minimum_km_er_observations
    String? save_density_basename
    String? processes
    String? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo build_model estimate_alt_reference \
      ~{if defined(alternate_model_filename) then ("--alternate-model-filename " +  '"' + alternate_model_filename + '"') else ""} \
      ~{if defined(alternate_model_name) then ("--alternate-model-name " +  '"' + alternate_model_name + '"') else ""} \
      ~{if defined(alternate_model_base) then ("--alternate-model-base " +  '"' + alternate_model_base + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(alternate_density_filename) then ("--alternate-density-filename " +  '"' + alternate_density_filename + '"') else ""} \
      ~{if defined(control_density_filename) then ("--control-density-filename " +  '"' + control_density_filename + '"') else ""} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(alt_fraction_percentile) then ("--alt-fraction-percentile " +  '"' + alt_fraction_percentile + '"') else ""} \
      ~{if defined(kernel_density_bandwidth) then ("--kernel-density-bandwidth " +  '"' + kernel_density_bandwidth + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(save_density_basename) then ("--save-density-basename " +  '"' + save_density_basename + '"') else ""} \
      ~{if defined(processes) then ("--processes " +  '"' + processes + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    alternate_model_filename: "Tombo model for alternative likelihood ratio significance testing."
    alternate_model_name: "A short name to associate with this alternate model (e.g. 5mC, 6mA, etc.). This text will be included in output filenames when this model is used for testing."
    alternate_model_base: "Non-standard base is an alternative to this base."
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control reads, containing only canonical nucleotides."
    alternate_density_filename: "File containing k-mer level kernel density estimates for the alternative sample saved using --save-density- basename."
    control_density_filename: "File containing k-mer level kernel density estimates for the control sample saved using --save-density- basename."
    dna: "Explicitly select canonical DNA model. Default: Automatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default: Automatically determine from FAST5s"
    tombo_model_filename: "Tombo model filename. If no file is provided, the default DNA or RNA Tombo model will be used."
    alt_fraction_percentile: "When esitmating the alternative base incorporation rate, this percent of k-mers are assumed to have significantly shifted signal so the alternative distribution minimally overlaps the standard base distribution. Default: 5.000000"
    kernel_density_bandwidth: "Bandwidth applied when performing Gaussian kernal density esitmation on standard and alternative base signal distributions. Default: 0.050000"
    minimum_km_er_observations: "Number of each k-mer observations required in order to produce a reference (genomic locations for standard reference and per-read for alternative reference). Default: 1000"
    save_density_basename: "Basename to save alternative model estimation density estimation information. See scripts/debug_est_alt.R for info use example. Default: Don't save."
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default: RawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall- group]/) containing basecalls and created within [--corrected-group] containing re-squiggle results. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
}