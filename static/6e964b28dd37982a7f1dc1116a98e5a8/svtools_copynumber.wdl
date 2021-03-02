version 1.0

task SvtoolsCopynumber {
  input {
    File? coordinates
    File? root
    Int? window
    String? sample
    File? cnv_nator
    String? vcf_input
    File? output_vcf_write
    File? tempdir
  }
  command <<<
    svtools copynumber \
      ~{if defined(coordinates) then ("--coordinates " +  '"' + coordinates + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(cnv_nator) then ("--cnvnator " +  '"' + cnv_nator + '"') else ""} \
      ~{if defined(vcf_input) then ("--input " +  '"' + vcf_input + '"') else ""} \
      ~{if defined(output_vcf_write) then ("--output " +  '"' + output_vcf_write + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    coordinates: "file containing coordinate for which to retrieve\\ncopynumber (required)"
    root: "CNVnator .root histogram file (required)"
    window: "CNVnator window size (required)"
    sample: "sample to annotate (required)"
    cnv_nator: "path to cnvnator binary for the cnvnator used by\\nspeedseq (required)"
    vcf_input: "VCF input"
    output_vcf_write: "output VCF to write (default: stdout)"
    tempdir: "Directory for temp file downloads"
  }
  output {
    File out_stdout = stdout()
  }
}