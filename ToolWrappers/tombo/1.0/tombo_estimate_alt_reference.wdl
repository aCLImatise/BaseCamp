version 1.0

task TomboEstimateAltReference {
  input {
    Boolean? alternate_model_filename
    Array[Int] fast_five_based_irs
    Int? alternate_model_name
    String? alternate_model_base
    File? tombo_model_filename
    Int? min_alt_base_percentage
    Float? sd_threshold
    Int? minimum_km_er_observations
    Int? corrected_group
    Array[String] base_call_subgroups
    Boolean? quiet
  }
  command <<<
    tombo estimate_alt_reference \
      ~{if (alternate_model_filename) then "--alternate-model-filename" else ""} \
      ~{if defined(fast_five_based_irs) then ("--fast5-basedirs " +  '"' + fast_five_based_irs + '"') else ""} \
      ~{if defined(alternate_model_name) then ("--alternate-model-name " +  '"' + alternate_model_name + '"') else ""} \
      ~{if defined(alternate_model_base) then ("--alternate-model-base " +  '"' + alternate_model_base + '"') else ""} \
      ~{if defined(tombo_model_filename) then ("--tombo-model-filename " +  '"' + tombo_model_filename + '"') else ""} \
      ~{if defined(min_alt_base_percentage) then ("--min-alt-base-percentage " +  '"' + min_alt_base_percentage + '"') else ""} \
      ~{if defined(sd_threshold) then ("--sd-threshold " +  '"' + sd_threshold + '"') else ""} \
      ~{if defined(minimum_km_er_observations) then ("--minimum-kmer-observations " +  '"' + minimum_km_er_observations + '"') else ""} \
      ~{if defined(corrected_group) then ("--corrected-group " +  '"' + corrected_group + '"') else ""} \
      ~{if defined(base_call_subgroups) then ("--basecall-subgroups " +  '"' + base_call_subgroups + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  parameter_meta {
    alternate_model_filename: "ALTERNATE_MODEL_FILENAME\\n--alternate-model-name\\nALTERNATE_MODEL_NAME\\n--alternate-model-base {A,C,G,T}\\n[--tombo-model-filename TOMBO_MODEL_FILENAME]\\n[--min-alt-base-percentage MIN_ALT_BASE_PERCENTAGE]\\n[--sd-threshold SD_THRESHOLD]\\n[--minimum-kmer-observations MINIMUM_KMER_OBSERVATIONS]\\n[--corrected-group CORRECTED_GROUP]\\n[--basecall-subgroups BASECALL_SUBGROUPS [BASECALL_SUBGROUPS ...]]\\n[--quiet] [--help]"
    fast_five_based_irs: "Directories containing fast5 files."
    alternate_model_name: "A short name to associate with this alternate model\\n(e.g. 5mC, 4mC, 6mA). This text will be included in\\noutput filenames when this model is used for testing."
    alternate_model_base: "Non-standard base is an alternative to this base."
    tombo_model_filename: "Tombo model for event-less resquiggle and significance\\ntesting. If no model is provided the default DNA or\\nRNA tombo model will be used."
    min_alt_base_percentage: "Minimum estimated percent of non-standard base\\ndistribution for inclusion of k-mer in non-standard\\nmodel. Default: 5.000000"
    sd_threshold: "Minimum level standard deviation difference between\\nestimated non-standard distribution mean and standard\\nmodel mean for inclusion of k-mer in non-standard\\nmodel. Default: 1.500000"
    minimum_km_er_observations: "Number of each k-mer observations required in order to\\nproduce a reference (genomic locations for standard\\nreference and per-read for alternative reference).\\nDefault: 1000"
    corrected_group: "FAST5 group created by resquiggle command. Default:\\nRawGenomeCorrected_000"
    base_call_subgroups: "FAST5 subgroup(s) (under Analyses/[corrected-group])\\ncontaining basecalls. Default: ['BaseCalled_template']"
    quiet: "Don't print status information."
  }
  output {
    File out_stdout = stdout()
  }
}