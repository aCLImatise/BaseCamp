version 1.0

task TomboBuildModelEstimateAltReference {
  input {
    File? tombo_model_alternative
    Int? short_name_associate
    String? alternate_model_base
    Array[Int] fast_five_based_irs
    Array[Int] control_fast_five_based_irs
    File? alternate_density_filename
    File? control_density_filename
    Boolean? dna
    Boolean? rna
    File? tombo_model_filename
    Float? alt_fraction_percentile
    Float? kernel_density_bandwidth
    Int? minimum_km_er_observations
    String? save_density_basename
    Int? processes
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String _alternatemodelname
    String _alternatemodelbase
  }
  command <<<
    tombo build_model estimate_alt_reference \
      ~{_alternatemodelname} \
      ~{_alternatemodelbase} \
      ~{if defined(tombo_model_alternative) then ("--alternate-model-filename " +  '"' + tombo_model_alternative + '"') else ""} \
      ~{if defined(short_name_associate) then ("--alternate-model-name " +  '"' + short_name_associate + '"') else ""} \
      ~{if defined(alternate_model_base) then ("--alternate-model-base " +  '"' + alternate_model_base + '"') else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(control_fast_five_based_irs) then ("--control-fast5-basedirs " +  '"' + control_fast_five_based_irs + '"') else ""} \
      ~{if defined(alternate_density_filename) then ("--alternate-density-filename " +  '"' + alternate_density_filename + '"') else ""} \
      ~{if defined(control_density_filename) then ("--control-density-filename " +  '"' + control_density_filename + '"') else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(alt_fraction_percentile) then ("--alt-fraction-percentile " +  '"' + alt_fraction_percentile + '"') else ""} \
      ~{if defined(kernel_density_bandwidth) then ("--kernel-density-bandwidth " +  '"' + kernel_density_bandwidth + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(save_density_basename) then ("--save-density-basename " +  '"' + save_density_basename + '"') else ""} \
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
    alternate_model_base: "Non-standard base is an alternative to this base."
    fast_five_based_irs: "Directories containing fast5 files."
    control_fast_five_based_irs: "Set of directories containing fast5 files for control\\nreads, containing only canonical nucleotides."
    alternate_density_filename: "File containing k-mer level kernel density estimates\\nfor the alternative sample saved using --save-density-\\nbasename."
    control_density_filename: "File containing k-mer level kernel density estimates\\nfor the control sample saved using --save-density-\\nbasename."
    dna: "Explicitly select canonical DNA model. Default:\\nAutomatically determine from FAST5s"
    rna: "Explicitly select canonical RNA model. Default:\\nAutomatically determine from FAST5s"
    tombo_model_filename: "Tombo model filename. If no file is provided, the\\ndefault DNA or RNA Tombo model will be used."
    alt_fraction_percentile: "When esitmating the alternative base incorporation\\nrate, this percent of k-mers are assumed to have\\nsignificantly shifted signal so the alternative\\ndistribution minimally overlaps the standard base\\ndistribution. Default: 5.000000"
    kernel_density_bandwidth: "Bandwidth applied when performing Gaussian kernal\\ndensity esitmation on standard and alternative base\\nsignal distributions. Default: 0.050000"
    minimum_km_er_observations: "Number of each k-mer observations required in order to\\nproduce a reference (genomic locations for standard\\nreference and per-read for alternative reference).\\nDefault: 1000"
    save_density_basename: "Basename to save alternative model estimation density\\nestimation information. See scripts/debug_est_alt.R\\nfor info use example. Default: Don't save."
    processes: "Number of processes. Default: 1"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under /Analyses/[--basecall-\\ngroup]/) containing basecalls and created within\\n[--corrected-group] containing re-squiggle results.\\nDefault: ['BaseCalled_template']"
    quiet: "Don't print status information."
    _alternatemodelname: "--alternate-model-name"
    _alternatemodelbase: "--alternate-model-base"
  }
  output {
    File out_stdout = stdout()
  }
}