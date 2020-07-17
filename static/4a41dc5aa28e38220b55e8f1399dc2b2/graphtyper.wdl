version 1.0

task Graphtyper {
  input {
    String? verbose
    Boolean? v_verbose
    String vcf_merge
  }
  command <<<
    graphtyper \
      ~{vcf_merge} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="--vverbose" false="" v_verbose}
  >>>
  parameter_meta {
    verbose: "Set to output verbose logging."
    v_verbose: "Set to output very verbose logging."
    vcf_merge: "Merge VCF files."
  }
}