version 1.0

task MbNormalize {
  input {
    String? mut_snp_ratio
  }
  command <<<
    mb-normalize \
      ~{if defined(mut_snp_ratio) then ("--mut_snp_ratio " +  '"' + mut_snp_ratio + '"') else ""}
  >>>
  parameter_meta {
    mut_snp_ratio: "remove positions with SNP-ratio > r"
  }
}