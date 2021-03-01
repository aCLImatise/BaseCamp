version 1.0

task Fourpop {
  input {
    Boolean? _input_file
    Boolean? number_snps_block
  }
  command <<<
    fourpop \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (number_snps_block) then "-k" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    _input_file: "[file name] input file"
    number_snps_block: "[int] number of SNPs per block for estimation of standard errors (1)"
  }
  output {
    File out_stdout = stdout()
  }
}