version 1.0

task MbnormalizeInputFile {
  input {
    String? mut_snp_ratio
    String mb_normalize
  }
  command <<<
    mb_normalize input_file \
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