version 1.0

task SNMF {
  input {
    String? _genotype_file
    String? _number_k
    String? _regularization_parameter
    String? _individual_admixture_file
    String? _ancestral_frequencies
    String? _crossentropy_masked
    String? _tolerance_error
    String? _number_max
    String? _number_snps
    String? _individual_admixture_initialisation
    String? _seed_random
    String? _haploid_default
    String? _number_processes
  }
  command <<<
    sNMF \
      ~{if defined(_genotype_file) then ("-x " +  '"' + _genotype_file + '"') else ""} \
      ~{if defined(_number_k) then ("-K " +  '"' + _number_k + '"') else ""} \
      ~{if defined(_regularization_parameter) then ("-a " +  '"' + _regularization_parameter + '"') else ""} \
      ~{if defined(_individual_admixture_file) then ("-q " +  '"' + _individual_admixture_file + '"') else ""} \
      ~{if defined(_ancestral_frequencies) then ("-g " +  '"' + _ancestral_frequencies + '"') else ""} \
      ~{if defined(_crossentropy_masked) then ("-c " +  '"' + _crossentropy_masked + '"') else ""} \
      ~{if defined(_tolerance_error) then ("-e " +  '"' + _tolerance_error + '"') else ""} \
      ~{if defined(_number_max) then ("-i " +  '"' + _number_max + '"') else ""} \
      ~{if defined(_number_snps) then ("-I " +  '"' + _number_snps + '"') else ""} \
      ~{if defined(_individual_admixture_initialisation) then ("-Q " +  '"' + _individual_admixture_initialisation + '"') else ""} \
      ~{if defined(_seed_random) then ("-s " +  '"' + _seed_random + '"') else ""} \
      ~{if defined(_haploid_default) then ("-m " +  '"' + _haploid_default + '"') else ""} \
      ~{if defined(_number_processes) then ("-p " +  '"' + _number_processes + '"') else ""}
  >>>
  parameter_meta {
    _genotype_file: "-- genotype file (in .geno format)"
    _number_k: "-- number K of ancestral populations"
    _regularization_parameter: "-- regularization parameter       (default: 0)"
    _individual_admixture_file: "-- individual admixture file      (default: genotype_file.K.Q)"
    _ancestral_frequencies: "-- ancestral frequencies file     (default: genotype_file.K.G)"
    _crossentropy_masked: "-- cross-entropy with 'perc'                          of masked genotypes               (default: 0.05)"
    _tolerance_error: "-- tolerance error                (default: 0.0001)"
    _number_max: "-- number max of iterations       (default: 200)"
    _number_snps: "-- number of SNPs used to init Q  (default: min(10000,L/10)"
    _individual_admixture_initialisation: "-- individual admixture initialisation file"
    _seed_random: "-- seed random init               (default: random)"
    _haploid_default: "-- 1 if haploid, 2 if diploid     (default: 2)"
    _number_processes: "-- number of processes (CPU)      (default: 1)"
  }
}