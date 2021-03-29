class: CommandLineTool
id: BacGWASim.cwl
inputs:
- id: in_config
  doc: Path to a config file
  type: File?
  inputBinding:
    prefix: --config
- id: in_output_dir
  doc: Path to the output directory
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_num_species
  doc: Number of samples in the simulated population
  type: long?
  inputBinding:
    prefix: --num-species
- id: in_genome_length
  doc: Length of the genome (bp)
  type: long?
  inputBinding:
    prefix: --genome-length
- id: in_mutation_rate
  doc: ']0-1[       Mutation rate'
  type: boolean?
  inputBinding:
    prefix: --mutation-rate
- id: in_recomb_rate
  doc: ']0-1[         Recombination rate'
  type: boolean?
  inputBinding:
    prefix: --recomb-rate
- id: in_maf
  doc: "]0-1[                 Minor allele frequency threshold of rare alleles\nto\
    \ be discarded"
  type: boolean?
  inputBinding:
    prefix: --maf
- id: in_num_var
  doc: "Number of simulated variants. If '-1', variant\nnumber will be solely a function\
    \ of mutation\nrate"
  type: long?
  inputBinding:
    prefix: --num-var
- id: in_random_seed
  doc: Random seed for reproducibility of results
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_phen_type
  doc: "Type of simulated phenotype. 'cc':binary case-\ncontrol, 'quant': quantitative"
  type: string?
  inputBinding:
    prefix: --phen-type
- id: in_num_causal_var
  doc: Number of causal markers
  type: long?
  inputBinding:
    prefix: --num-causal-var
- id: in_causal_maf_min
  doc: ']0-1[      Minimum Minor Allele Frequency (MAF) of causal'
  type: boolean?
  inputBinding:
    prefix: --causal-maf-min
- id: in_effect_size_odr
  doc: Effect sizes of causal markers (.odds ratios)
  type: long?
  inputBinding:
    prefix: --effect-size-odr
- id: in_phen_replication
  doc: Number of phenotype replication sets
  type: long?
  inputBinding:
    prefix: --phen-replication
- id: in_heritability
  doc: '[0-1]        Heritability of phenotype'
  type: boolean?
  inputBinding:
    prefix: --heritability
- id: in_disease_prevalence
  doc: ']0-1[  Prevalence of phenotype'
  type: boolean?
  inputBinding:
    prefix: --disease-prevalence
- id: in_case
  doc: "In case of case-control binary phenotype\nsimulation, number of case and control\
    \ samples\nmust be defined by 'case' and 'control'\nparameters"
  type: long?
  inputBinding:
    prefix: --case
- id: in_control
  doc: "In case of case-control binary phenotype\nsimulation, number of case and control\
    \ samples\nmust be defined by 'case' and 'control'\nparameters"
  type: long?
  inputBinding:
    prefix: --control
- id: in_plot_ld
  doc: Generate the LD plot
  type: boolean?
  inputBinding:
    prefix: --plot-ld
- id: in_snp_limit
  doc: "Number of SNPs randomly selected for plotting\nlinkage map (Increasing this\
    \ number will\nsignificantly increase computation time and\nrequire increasing\
    \ the java heap size)"
  type: long?
  inputBinding:
    prefix: --snp-limit
- id: in_heap_size
  doc: Java heap_size for ld plot visualization (.mb)
  type: long?
  inputBinding:
    prefix: --heap-size
- id: in_ld_maf
  doc: "]0-1[              Minimum Minor Allele Frequency of markers for LD\nplotting\
    \ (Lower this values, it is more\ndifficult to estimate accurate r2 values between\n\
    pairs of markers leading to more noisy plot)"
  type: boolean?
  inputBinding:
    prefix: --ld-maf
- id: in_cores
  doc: Number of cores available for computations
  type: long?
  inputBinding:
    prefix: --cores
- id: in_latency_wait
  doc: "Time to wait (in sec) after a job to ensure that\nall files are present\n"
  type: long?
  inputBinding:
    prefix: --latency-wait
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Path to the output directory
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bacgwasim:2.0.0--py_1
cwlVersion: v1.1
baseCommand:
- BacGWASim
