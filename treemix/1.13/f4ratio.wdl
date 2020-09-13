version 1.0

task F4ratio {
  input {
    Boolean? _input_file
    Boolean? number_snps_block
    Boolean? populations_denominator_f
    Boolean? _populations_estimate
  }
  command <<<
    f4ratio \
      ~{if (_input_file) then "-i" else ""} \
      ~{if (number_snps_block) then "-k" else ""} \
      ~{if (populations_denominator_f) then "-d" else ""} \
      ~{if (_populations_estimate) then "-n" else ""}
  >>>
  parameter_meta {
    _input_file: "[file name] input file"
    number_snps_block: "[int] number of SNPs per block for estimation of standard errors (1)"
    populations_denominator_f: "[file name] populations for denominator of f4 ratio"
    _populations_estimate: "[file name] populations to estimate"
  }
  output {
    File out_stdout = stdout()
  }
}