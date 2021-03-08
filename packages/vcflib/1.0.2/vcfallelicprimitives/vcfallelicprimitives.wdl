version 1.0

task Vcfallelicprimitives {
  input {
    Boolean? use_mnps
    String? tag_parsed
    Int? max_length
    Boolean? keep_info
    Boolean? keep_geno
    File? var_file
  }
  command <<<
    vcfallelicprimitives \
      ~{var_file} \
      ~{if (use_mnps) then "--use-mnps" else ""} \
      ~{if defined(tag_parsed) then ("--tag-parsed " +  '"' + tag_parsed + '"') else ""} \
      ~{if defined(max_length) then ("--max-length " +  '"' + max_length + '"') else ""} \
      ~{if (keep_info) then "--keep-info" else ""} \
      ~{if (keep_geno) then "--keep-geno" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/vcflib:1.0.2--hfbaaabd_0"
  }
  parameter_meta {
    use_mnps: "Retain MNPs as separate events (default: false)."
    tag_parsed: "Tag records which are split apart of a complex allele with this flag."
    max_length: "Do not manipulate records in which either the ALT or\\nREF is longer than LEN (default: 200)."
    keep_info: "Maintain site and allele-level annotations when decomposing.\\nNote that in many cases, such as multisample VCFs, these won't\\nbe valid post-decomposition.  For biallelic loci in single-sample\\nVCFs, they should be usable with caution."
    keep_geno: "Maintain genotype-level annotations when decomposing.  Similar\\ncaution should be used for this as for --keep-info."
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}