version 1.0

task Fitbeta {
  input {
    File? snp_file
    File? seg_file
    Float? sensitivity
    Int? jobs
    Int? restarts
    Int? skip
    String? output_prefix_default
    String? seed
  }
  command <<<
    fitbeta \
      ~{if defined(snp_file) then ("--snpfile " +  '"' + snp_file + '"') else ""} \
      ~{if defined(seg_file) then ("--segfile " +  '"' + seg_file + '"') else ""} \
      ~{if defined(sensitivity) then ("--sensitivity " +  '"' + sensitivity + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(restarts) then ("--restarts " +  '"' + restarts + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(output_prefix_default) then ("--output " +  '"' + output_prefix_default + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/decifer:1.0.0--py27h36946f9_0"
  }
  parameter_meta {
    snp_file: "File with read counts for germline SNP from all\\nsamples"
    seg_file: "SEG file with allele-specific copy numbers"
    sensitivity: "Sensitivity E to exclude SNPs with 0.5 - E <= BAF <\\n0.5 (default: 0.1)"
    jobs: "Number of parallele jobs to use (default: equal to\\nnumber of available processors)"
    restarts: "Maximum size of brute-force search (default: 1e4)"
    skip: "Numbers to skip in the brute-force search (default:\\n10)"
    output_prefix_default: "Output prefix (default: ./)"
    seed: "Random-generator seed (default: None)"
  }
  output {
    File out_stdout = stdout()
  }
}