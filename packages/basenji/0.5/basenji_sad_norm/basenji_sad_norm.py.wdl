version 1.0

task BasenjiSadNormpy {
  input {
    Int? number_snps_sample
    String arg
  }
  command <<<
    basenji_sad_norm_py \
      ~{arg} \
      ~{if defined(number_snps_sample) then ("-o " +  '"' + number_snps_sample + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    number_snps_sample: "Number of SNPs to sample for fit [Default: 100000]"
    arg: ""
  }
  output {
    File out_stdout = stdout()
  }
}