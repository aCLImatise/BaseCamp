version 1.0

task MarginCons {
  input {
    String? depth
    String reference
    String vcf_file
    String bam_file
  }
  command <<<
    margin_cons \
      ~{reference} \
      ~{vcf_file} \
      ~{bam_file} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""}
  >>>
  parameter_meta {
    depth: "minimum depth to call a variant"
    reference: ""
    vcf_file: ""
    bam_file: ""
  }
}