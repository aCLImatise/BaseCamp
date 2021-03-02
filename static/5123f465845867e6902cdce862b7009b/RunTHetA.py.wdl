version 1.0

task RunTHetApy {
  input {
    File? tumor_file
    File? normal_file
    Int? number_of_subpopulations
    String? max_k
    Int? tau
    File? dir
    File? output_prefix
    Int? max_normal
    Int? num_processes
    Int? num_intervals
    String? normal_bound_heuristic
    Boolean? baf
    Int? ratio_dev
    Int? min_frac
    Boolean? no_clustering
  }
  command <<<
    RunTHetA_py \
      ~{if defined(tumor_file) then ("--TUMOR_FILE " +  '"' + tumor_file + '"') else ""} \
      ~{if defined(normal_file) then ("--NORMAL_FILE " +  '"' + normal_file + '"') else ""} \
      ~{if defined(number_of_subpopulations) then ("--N " +  '"' + number_of_subpopulations + '"') else ""} \
      ~{if defined(max_k) then ("--MAX_K " +  '"' + max_k + '"') else ""} \
      ~{if defined(tau) then ("--TAU " +  '"' + tau + '"') else ""} \
      ~{if defined(dir) then ("--DIR " +  '"' + dir + '"') else ""} \
      ~{if defined(output_prefix) then ("--OUTPUT_PREFIX " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(max_normal) then ("--MAX_NORMAL " +  '"' + max_normal + '"') else ""} \
      ~{if defined(num_processes) then ("--NUM_PROCESSES " +  '"' + num_processes + '"') else ""} \
      ~{if defined(num_intervals) then ("--NUM_INTERVALS " +  '"' + num_intervals + '"') else ""} \
      ~{if defined(normal_bound_heuristic) then ("--NORMAL_BOUND_HEURISTIC " +  '"' + normal_bound_heuristic + '"') else ""} \
      ~{if (baf) then "--BAF" else ""} \
      ~{if defined(ratio_dev) then ("--RATIO_DEV " +  '"' + ratio_dev + '"') else ""} \
      ~{if defined(min_frac) then ("--MIN_FRAC " +  '"' + min_frac + '"') else ""} \
      ~{if (no_clustering) then "--NO_CLUSTERING" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tumor_file: "File containing allelic counts for tumor sample SNPs."
    normal_file: "File containing allelic counts for normal samlpe SNPs."
    number_of_subpopulations: "Number of subpopulations"
    max_k: "The maximum value allowed for entries in C"
    tau: "Expected number of copies in normal genome"
    dir: "Directory where result file is written to"
    output_prefix: "Prefix for output files created. By default, it will\\nbe the beginning of the input file name (i.e.if input\\nfilename were example.input, output filed would be\\nexample.output and example.withbounds)"
    max_normal: "The maximum fraction to consider for normal. Only\\nenforced for n=2"
    num_processes: "The number of processes to be used"
    num_intervals: "The maximum number of intervals used by automatic\\ninterval selection."
    normal_bound_heuristic: "Options are .pdf, .jpg, .png, .eps"
    baf: "Option to run the BAF model."
    ratio_dev: "The deviation away from 1.0 that a ratio must be to be\\nconsidered a potential copy number aberration."
    min_frac: "The minimum fraction of the genome that must have a\\npotential copy number aberration to be a valid sample\\nfor THetA analysis."
    no_clustering: "Option to run THetA without clustering."
  }
  output {
    File out_stdout = stdout()
  }
}