version 1.0

task Hmmer2gff {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? cite
    Boolean? manual
    Boolean? o
    String? discard
    Boolean? disable_evalue
    Boolean? no_custom_profiles
    String? database
    String? feature_type
    Boolean? no_frame
  }
  command <<<
    hmmer2gff \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--cite" false="" cite} \
      ~{true="--manual" false="" manual} \
      ~{true="-o" false="" o} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{true="--disable-evalue" false="" disable_evalue} \
      ~{true="--no-custom-profiles" false="" no_custom_profiles} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(feature_type) then ("--feature-type " +  '"' + feature_type + '"') else ""} \
      ~{true="--no-frame" false="" no_frame}
  >>>
  parameter_meta {
    verbose: "more verbose - includes debug messages (default: 20)"
    quiet: "less verbose - only error and critical messages (default: None)"
    cite: "Show citation for the framework"
    manual: "Show the script manual"
    o: "[OUTPUT_FILE], --output-file [OUTPUT_FILE]"
    discard: "Evalue over which an hit will be discarded (default: 0.05)"
    disable_evalue: "Disable Evalue filter (default: False)"
    no_custom_profiles: "Profiles names are not in the custom format (default: True)"
    database: "Database from which the profiles are generated \" +\" (e.g. PFAM) (default: CUSTOM)"
    feature_type: "Type of feature (e.g. gene) (default: gene)"
    no_frame: "Set if the sequences were not translated with translate_seq (default: False)"
  }
}