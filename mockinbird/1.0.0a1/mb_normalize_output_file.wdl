version 1.0

task MbnormalizeOutputFile {
  input {
    String? mut_snp_ratio
    String mb_normalize
  }
  command <<<
    mb_normalize output_file \
      ~{mb_normalize} \
      ~{if defined(mut_snp_ratio) then ("--mut_snp_ratio " +  '"' + mut_snp_ratio + '"') else ""}
  >>>
  parameter_meta {
    mut_snp_ratio: ""
    mb_normalize: ""
  }
  output {
    File out_stdout = stdout()
  }
}