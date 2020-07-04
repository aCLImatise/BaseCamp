version 1.0

task SvtoolsCopynumber {
  input {
    File? cnv_nator
    File? coordinates
    File? root
    Int? window
    String? sample
    String? vcf_input
    File? output_vcf_write
    String? tempdir
  }
  command <<<
    svtools copynumber \
      ~{if defined(cnv_nator) then ("--cnvnator " +  '"' + cnv_nator + '"') else ""} \
      ~{if defined(coordinates) then ("--coordinates " +  '"' + coordinates + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(vcf_input) then ("--input " +  '"' + vcf_input + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  parameter_meta {
    cnv_nator: "[-i <VCF>] [-o <PATH>] [-t <DIR>]"
    coordinates: "file containing coordinate for which to retrieve copynumber (required)"
    root: "CNVnator .root histogram file (required)"
    window: "CNVnator window size (required)"
    sample: "sample to annotate (required)"
    vcf_input: "VCF input"
    output_vcf_write: "output VCF to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
}