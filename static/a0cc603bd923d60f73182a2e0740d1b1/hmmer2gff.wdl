version 1.0

task Hmmer2gff {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? cite
    Boolean? manual
    Float? discard
    Boolean? disable_evalue
    Boolean? no_custom_profiles
    String? database
    String? feature_type
    Boolean? no_frame
    Boolean? o
  }
  command <<<
    hmmer2gff \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (cite) then "--cite" else ""} \
      ~{if (manual) then "--manual" else ""} \
      ~{if defined(discard) then ("--discard " +  '"' + discard + '"') else ""} \
      ~{if (disable_evalue) then "--disable-evalue" else ""} \
      ~{if (no_custom_profiles) then "--no-custom-profiles" else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(feature_type) then ("--feature-type " +  '"' + feature_type + '"') else ""} \
      ~{if (no_frame) then "--no-frame" else ""} \
      ~{if (o) then "-o" else ""}
  >>>
  parameter_meta {
    verbose: "more verbose - includes debug messages (default: 20)"
    quiet: "less verbose - only error and critical messages\\n(default: None)"
    cite: "Show citation for the framework"
    manual: "Show the script manual"
    discard: "Evalue over which an hit will be discarded (default:\\n0.05)"
    disable_evalue: "Disable Evalue filter (default: False)"
    no_custom_profiles: "Profiles names are not in the custom format (default:\\nTrue)"
    database: "Database from which the profiles are generated \\\" +\\\"\\n(e.g. PFAM) (default: CUSTOM)"
    feature_type: "Type of feature (e.g. gene) (default: gene)"
    no_frame: "Set if the sequences were not translated with\\ntranslate_seq (default: False)\\n"
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}