version 1.0

task Vcfallelicprimitives {
  input {
    Boolean? use_mnps
    String? tag_parsed
    String? max_length
    Boolean? keep_info
    Boolean? keep_geno
    File? file
  }
  command <<<
    vcfallelicprimitives \
      ~{file} \
      ~{true="--use-mnps" false="" use_mnps} \
      ~{if defined(tag_parsed) then ("--tag-parsed " +  '"' + tag_parsed + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{true="--keep-info" false="" keep_info} \
      ~{true="--keep-geno" false="" keep_geno}
  >>>
  parameter_meta {
    use_mnps: "Retain MNPs as separate events (default: false)."
    tag_parsed: "Tag records which are split apart of a complex allele with this flag."
    max_length: "Do not manipulate records in which either the ALT or REF is longer than LEN (default: 200)."
    keep_info: "Maintain site and allele-level annotations when decomposing. Note that in many cases, such as multisample VCFs, these won't be valid post-decomposition.  For biallelic loci in single-sample VCFs, they should be usable with caution."
    keep_geno: "Maintain genotype-level annotations when decomposing.  Similar caution should be used for this as for --keep-info."
    file: ""
  }
}