version 1.0

task Vcfroc {
  input {
    File? truth_vcf
    Int? window_size
    Boolean? complex
    File? reference
    File? vcf_file
  }
  command <<<
    vcfroc \
      ~{vcf_file} \
      ~{if defined(truth_vcf) then ("--truth-vcf " +  '"' + truth_vcf + '"') else ""} \
      ~{if defined(window_size) then ("--window-size " +  '"' + window_size + '"') else ""} \
      ~{if (complex) then "--complex" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    truth_vcf: "use this VCF as ground truth for ROC generation"
    window_size: "compare records up to this many bp away (default 30)"
    complex: "directly compare complex alleles, don't parse into primitives"
    reference: "FASTA reference file"
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}