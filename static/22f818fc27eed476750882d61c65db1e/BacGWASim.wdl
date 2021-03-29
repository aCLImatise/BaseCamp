version 1.0

task BacGWASim {
  input {
    File? config
    File? output_dir
    Int? num_species
    Int? genome_length
    Boolean? mutation_rate
    Boolean? recomb_rate
    Boolean? maf
    Int? num_var
    Int? random_seed
    String? phen_type
    Int? num_causal_var
    Boolean? causal_maf_min
    Int? effect_size_odr
    Int? phen_replication
    Boolean? heritability
    Boolean? disease_prevalence
    Int? case
    Int? control
    Boolean? plot_ld
    Int? snp_limit
    Int? heap_size
    Boolean? ld_maf
    Int? cores
    Int? latency_wait
  }
  command <<<
    BacGWASim \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(num_species) then ("--num-species " +  '"' + num_species + '"') else ""} \
      ~{if defined(genome_length) then ("--genome-length " +  '"' + genome_length + '"') else ""} \
      ~{if (mutation_rate) then "--mutation-rate" else ""} \
      ~{if (recomb_rate) then "--recomb-rate" else ""} \
      ~{if (maf) then "--maf" else ""} \
      ~{if defined(num_var) then ("--num-var " +  '"' + num_var + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(phen_type) then ("--phen-type " +  '"' + phen_type + '"') else ""} \
      ~{if defined(num_causal_var) then ("--num-causal-var " +  '"' + num_causal_var + '"') else ""} \
      ~{if (causal_maf_min) then "--causal-maf-min" else ""} \
      ~{if defined(effect_size_odr) then ("--effect-size-odr " +  '"' + effect_size_odr + '"') else ""} \
      ~{if defined(phen_replication) then ("--phen-replication " +  '"' + phen_replication + '"') else ""} \
      ~{if (heritability) then "--heritability" else ""} \
      ~{if (disease_prevalence) then "--disease-prevalence" else ""} \
      ~{if defined(case) then ("--case " +  '"' + case + '"') else ""} \
      ~{if defined(control) then ("--control " +  '"' + control + '"') else ""} \
      ~{if defined(plot_ld) then ("--plot-ld " +  '"' + plot_ld + '"') else ""} \
      ~{if defined(snp_limit) then ("--snp-limit " +  '"' + snp_limit + '"') else ""} \
      ~{if defined(heap_size) then ("--heap-size " +  '"' + heap_size + '"') else ""} \
      ~{if (ld_maf) then "--ld-maf" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(latency_wait) then ("--latency-wait " +  '"' + latency_wait + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bacgwasim:2.0.0--py_1"
  }
  parameter_meta {
    config: "Path to a config file"
    output_dir: "Path to the output directory"
    num_species: "Number of samples in the simulated population"
    genome_length: "Length of the genome (bp)"
    mutation_rate: "]0-1[       Mutation rate"
    recomb_rate: "]0-1[         Recombination rate"
    maf: "]0-1[                 Minor allele frequency threshold of rare alleles\\nto be discarded"
    num_var: "Number of simulated variants. If '-1', variant\\nnumber will be solely a function of mutation\\nrate"
    random_seed: "Random seed for reproducibility of results"
    phen_type: "Type of simulated phenotype. 'cc':binary case-\\ncontrol, 'quant': quantitative"
    num_causal_var: "Number of causal markers"
    causal_maf_min: "]0-1[      Minimum Minor Allele Frequency (MAF) of causal"
    effect_size_odr: "Effect sizes of causal markers (.odds ratios)"
    phen_replication: "Number of phenotype replication sets"
    heritability: "[0-1]        Heritability of phenotype"
    disease_prevalence: "]0-1[  Prevalence of phenotype"
    case: "In case of case-control binary phenotype\\nsimulation, number of case and control samples\\nmust be defined by 'case' and 'control'\\nparameters"
    control: "In case of case-control binary phenotype\\nsimulation, number of case and control samples\\nmust be defined by 'case' and 'control'\\nparameters"
    plot_ld: "Generate the LD plot"
    snp_limit: "Number of SNPs randomly selected for plotting\\nlinkage map (Increasing this number will\\nsignificantly increase computation time and\\nrequire increasing the java heap size)"
    heap_size: "Java heap_size for ld plot visualization (.mb)"
    ld_maf: "]0-1[              Minimum Minor Allele Frequency of markers for LD\\nplotting (Lower this values, it is more\\ndifficult to estimate accurate r2 values between\\npairs of markers leading to more noisy plot)"
    cores: "Number of cores available for computations"
    latency_wait: "Time to wait (in sec) after a job to ensure that\\nall files are present\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
  }
}