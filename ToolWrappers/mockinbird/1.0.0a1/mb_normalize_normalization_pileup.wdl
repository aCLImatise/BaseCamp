version 1.0

task MbnormalizeNormalizationPileup {
  input {
    String? mut_snp_ratio
    String mb_normalize
  }
  command <<<
    mb_normalize normalization_pileup \
      ~{mb_normalize} \
      ~{if defined(mut_snp_ratio) then ("--mut_snp_ratio " +  '"' + mut_snp_ratio + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mut_snp_ratio: ""
    mb_normalize: ""
  }
  output {
    File out_stdout = stdout()
  }
}