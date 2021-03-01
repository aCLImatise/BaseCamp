version 1.0

task SampleSimilarity {
  input {
    File? in
    File? out
    String? mode
    File? roi
    Boolean? include_go_no_some_s
    Boolean? skip_multi
    Int? min_cov
    Int? max_snps
    Int? build
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    SampleSimilarity \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(mode) then ("-mode " +  '"' + mode + '"') else ""} \
      ~{if defined(roi) then ("-roi " +  '"' + roi + '"') else ""} \
      ~{if (include_go_no_some_s) then "-include_gonosomes" else ""} \
      ~{if (skip_multi) then "-skip_multi" else ""} \
      ~{if defined(min_cov) then ("-min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(max_snps) then ("-max_snps " +  '"' + max_snps + '"') else ""} \
      ~{if defined(build) then ("-build " +  '"' + build + '"') else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "Input variant lists in VCF format (two or more). If only one file is given, each line in this file is interpreted as an input file path."
    out: "Output file. If unset, writes to STDOUT.\\nDefault value: ''"
    mode: "Mode (input format).\\nDefault value: 'vcf'\\nValid: 'vcf,bam'"
    roi: "Restrict similarity calculation to variants in target region.\\nDefault value: ''"
    include_go_no_some_s: "Includes gonosomes into calculation (by default only variants on autosomes are considered).\\nDefault value: 'false'"
    skip_multi: "Skip multi-allelic variants instead of throwing an error (VCF mode).\\nDefault value: 'false'"
    min_cov: "Minimum coverage to consider a SNP for the analysis (BAM mode).\\nDefault value: '30'"
    max_snps: "The maximum number of high-coverage SNPs to extract from BAM. 0 means unlimited (BAM mode).\\nDefault value: '2000'"
    build: "Genome build used to generate the input (BAM mode).\\nDefault value: 'hg19'\\nValid: 'hg19,hg38'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}