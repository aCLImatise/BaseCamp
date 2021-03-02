version 1.0

task TomboEstimateAltReference {
  input {
    Array[Int] fast_five_based_irs
    File? tombo_model_alternative
    Int? short_name_associate
    String? alternate_model_base
    File? tombo_model_filename
    Int? min_alt_base_percentage
    Float? sd_threshold
    Int? minimum_km_er_observations
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
    String _alternatemodelname
    String _alternatemodelbase
  }
  command <<<
    tombo estimate_alt_reference \
      ~{_alternatemodelname} \
      ~{_alternatemodelbase} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(tombo_model_alternative) then ("--alternate-model-filename " +  '"' + tombo_model_alternative + '"') else ""} \
      ~{if defined(short_name_associate) then ("--alternate-model-name " +  '"' + short_name_associate + '"') else ""} \
      ~{if defined(alternate_model_base) then ("--alternate-model-base " +  '"' + alternate_model_base + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(min_alt_base_percentage) then ("--min-alt-base-percentage " +  '"' + min_alt_base_percentage + '"') else ""} \
      ~{if defined(sd_threshold) then ("--sd-threshold " +  '"' + sd_threshold + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_five_based_irs: "Directories containing fast5 files."
    tombo_model_alternative: "Tombo model for alternative likelihood ratio\\nsignificance testing."
    short_name_associate: "A short name to associate with this alternate model\\n(e.g. 5mC, 4mC, 6mA). This text will be included in\\noutput filenames when this model is used for testing."
    alternate_model_base: "Non-standard base is an alternative to this base."
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    min_alt_base_percentage: "Minimum estimated percent of non-standard base\\ndistribution for inclusion of k-mer in non-standard\\nmodel. Default: 5.000000"
    sd_threshold: "Minimum level standard deviation difference between\\nestimated non-standard distribution mean and standard\\nmodel mean for inclusion of k-mer in non-standard\\nmodel. Default: 1.500000"
    minimum_km_er_observations: "Number of each k-mer observations required in order to\\nproduce a reference (genomic locations for standard\\nreference and per-read for alternative reference).\\nDefault: 1000"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
    _alternatemodelname: "--alternate-model-name"
    _alternatemodelbase: "--alternate-model-base {A,C,G,T}"
  }
  output {
    File out_stdout = stdout()
  }
}