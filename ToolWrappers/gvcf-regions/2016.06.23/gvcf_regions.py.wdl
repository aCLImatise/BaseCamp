version 1.0

task GvcfRegionspy {
  input {
    Boolean? unreported_is_called
    Array[String] ignore_phrases
    String? min_gq
    Int? min_qual
    Array[String] pass_phrases
    String? gvc_f_type
  }
  command <<<
    gvcf_regions_py \
      ~{if (unreported_is_called) then "--unreported_is_called" else ""} \
      ~{if defined(ignore_phrases) then ("--ignore_phrases " +  '"' + ignore_phrases + '"') else ""} \
      ~{if defined(min_gq) then ("--min_GQ " +  '"' + min_gq + '"') else ""} \
      ~{if defined(min_qual) then ("--min_QUAL " +  '"' + min_qual + '"') else ""} \
      ~{if defined(pass_phrases) then ("--pass_phrases " +  '"' + pass_phrases + '"') else ""} \
      ~{if defined(gvc_f_type) then ("--gvcf_type " +  '"' + gvc_f_type + '"') else ""}
  >>>
  parameter_meta {
    unreported_is_called: "use this flag to treat unreported sites as called"
    ignore_phrases: "list of phrases considered as discarded, e.g., CNV,\\nME. A line that contains any of the ignore phrases is\\ndiscarded."
    min_gq: "minimum GQ (Genotype Quality) considered as called"
    min_qual: "minimum QUAL considered as called"
    pass_phrases: "list of phrases considered as called, e.g., PASS,\\nREFCALL. A line must contain any of the pass phrases\\nto be considered as called."
    gvc_f_type: "type of gvcf output. [unreported_is_called,\\nignore_phrases, min_GQ, min_QUAL, pass_phrases]\\npresets: complete_genomics: [True, ['CNV', 'INS:ME'],\\nNone, None, ['PASS']]. freebayes: [False, None, None,\\nNone, ['PASS']]. gatk: [False, None, 5, None, None].\\nplatypus: [False, None, None, None, ['PASS',\\n'REFCALL']].\\n"
  }
  output {
    File out_stdout = stdout()
  }
}