version 1.0

task Plink2 {
  input {
    Boolean? genotyping_rate
  }
  command <<<
    plink2 \
      ~{if (genotyping_rate) then "--genotyping-rate" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/plink2:2.00a2.3--hf22980b_0"
  }
  parameter_meta {
    genotyping_rate: ", and --zst-decompress."
  }
  output {
    File out_stdout = stdout()
  }
}