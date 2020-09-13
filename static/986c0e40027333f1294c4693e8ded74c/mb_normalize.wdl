version 1.0

task Mbnormalize {
  input {
    String? mut_snp_ratio
  }
  command <<<
    mb_normalize \
      ~{if defined(mut_snp_ratio) then ("--mut_snp_ratio " +  '"' + mut_snp_ratio + '"') else ""}
  >>>
  parameter_meta {
    mut_snp_ratio: "remove positions with SNP-ratio > r\\n"
  }
  output {
    File out_stdout = stdout()
  }
}