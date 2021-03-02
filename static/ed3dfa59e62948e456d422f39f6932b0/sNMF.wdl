version 1.0

task SNMF {
  input {
    File? genotype_file_format
    Int? number_k_ancestral
    Int? regularization_parameter_default
    File? individual_admixture_file
    File? ancestral_frequencies_file
    Float? _crossentropy_masked
    Float? _tolerance_error
    Int? _number_max
    Int? number_snps_used
    File? individual_admixture_initialisation
    String? _seed_random
    Int? _diploid_default
    Int? number_processes_cpu
  }
  command <<<
    sNMF \
      ~{if defined(genotype_file_format) then ("-x " +  '"' + genotype_file_format + '"') else ""} \
      ~{if defined(number_k_ancestral) then ("-K " +  '"' + number_k_ancestral + '"') else ""} \
      ~{if defined(regularization_parameter_default) then ("-a " +  '"' + regularization_parameter_default + '"') else ""} \
      ~{if defined(individual_admixture_file) then ("-q " +  '"' + individual_admixture_file + '"') else ""} \
      ~{if defined(ancestral_frequencies_file) then ("-g " +  '"' + ancestral_frequencies_file + '"') else ""} \
      ~{if defined(_crossentropy_masked) then ("-c " +  '"' + _crossentropy_masked + '"') else ""} \
      ~{if defined(_tolerance_error) then ("-e " +  '"' + _tolerance_error + '"') else ""} \
      ~{if defined(_number_max) then ("-i " +  '"' + _number_max + '"') else ""} \
      ~{if defined(number_snps_used) then ("-I " +  '"' + number_snps_used + '"') else ""} \
      ~{if defined(individual_admixture_initialisation) then ("-Q " +  '"' + individual_admixture_initialisation + '"') else ""} \
      ~{if defined(_seed_random) then ("-s " +  '"' + _seed_random + '"') else ""} \
      ~{if defined(_diploid_default) then ("-m " +  '"' + _diploid_default + '"') else ""} \
      ~{if defined(number_processes_cpu) then ("-p " +  '"' + number_processes_cpu + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    genotype_file_format: "-- genotype file (in .geno format)"
    number_k_ancestral: "-- number K of ancestral populations"
    regularization_parameter_default: "-- regularization parameter       (default: 0)"
    individual_admixture_file: "-- individual admixture file      (default: genotype_file.K.Q)"
    ancestral_frequencies_file: "-- ancestral frequencies file     (default: genotype_file.K.G)"
    _crossentropy_masked: "-- cross-entropy with 'perc'\\nof masked genotypes               (default: 0.05)"
    _tolerance_error: "-- tolerance error                (default: 0.0001)"
    _number_max: "-- number max of iterations       (default: 200)"
    number_snps_used: "-- number of SNPs used to init Q  (default: min(10000,L/10)"
    individual_admixture_initialisation: "-- individual admixture initialisation file"
    _seed_random: "-- seed random init               (default: random)"
    _diploid_default: "-- 1 if haploid, 2 if diploid     (default: 2)"
    number_processes_cpu: "-- number of processes (CPU)      (default: 1)"
  }
  output {
    File out_stdout = stdout()
  }
}