version 1.0

task SmudgeplotpyExtract {
  input {
    File? coverage_file
    File? seq_file
    Int? count_min
    Int? count_max
    Int? ratio_min
    Int? ratio_max
  }
  command <<<
    smudgeplot_py extract \
      ~{if defined(coverage_file) then ("--coverageFile " +  '"' + coverage_file + '"') else ""} \
      ~{if defined(seq_file) then ("--seqFile " +  '"' + seq_file + '"') else ""} \
      ~{if defined(count_min) then ("--countMin " +  '"' + count_min + '"') else ""} \
      ~{if defined(count_max) then ("--countMax " +  '"' + count_max + '"') else ""} \
      ~{if defined(ratio_min) then ("--ratioMin " +  '"' + ratio_min + '"') else ""} \
      ~{if defined(ratio_max) then ("--ratioMax " +  '"' + ratio_max + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/smudgeplot:0.2.4--py38r40h516909a_0"
  }
  parameter_meta {
    coverage_file: "coverage file for the kmer pairs"
    seq_file: "sequences of the kmer pairs"
    count_min: "lower bound of the summed coverage"
    count_max: "upper bound of the summed coverage"
    ratio_min: "lower bound of minor allele ratio"
    ratio_max: "upper bound of minor allele ratio\\n"
  }
  output {
    File out_stdout = stdout()
  }
}