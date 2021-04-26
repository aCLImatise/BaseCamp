version 1.0

task BasenjiFetchNormpy {
  input {
    Int? sampled_snps_fit
    Int sad_h_five_path
    String vcf_file
  }
  command <<<
    basenji_fetch_norm_py \
      ~{sad_h_five_path} \
      ~{vcf_file} \
      ~{if defined(sampled_snps_fit) then ("-s " +  '"' + sampled_snps_fit + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5.1--pyhdfd78af_0"
  }
  parameter_meta {
    sampled_snps_fit: "Sampled SNPs to fit distribution [Default: 131072]"
    sad_h_five_path: ""
    vcf_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}