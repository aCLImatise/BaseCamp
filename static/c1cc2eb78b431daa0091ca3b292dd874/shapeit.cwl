class: CommandLineTool
id: shapeit.cwl
inputs:
- id: in_produce_help_message
  doc: '[ --help ]                         Produce help message.'
  type: boolean?
  inputBinding:
    prefix: -H
- id: in_licence
  doc: Produce licence description.
  type: boolean?
  inputBinding:
    prefix: --licence
- id: in_source
  doc: Produce source file version details.
  type: boolean?
  inputBinding:
    prefix: --source
- id: in_seed
  doc: (=1599704773)              Seed of the random number generator.
  type: long?
  inputBinding:
    prefix: --seed
- id: in_aligned
  doc: Ref allele is aligned on the reference
  type: boolean?
  inputBinding:
    prefix: --aligned
- id: in_arg_shapeitdatetimeuuidloglog_file
  doc: "[ --output-log ] arg (=shapeit_date_time_UUID.log)\nLog file containing a\
    \ copy of the\nscreen output."
  type: File?
  inputBinding:
    prefix: -L
- id: in_exclude_snp
  doc: "List of positions to exclude in\ninput/output files."
  type: string?
  inputBinding:
    prefix: --exclude-snp
- id: in_include_snp
  doc: "List of positions to include in\ninput/output files."
  type: string?
  inputBinding:
    prefix: --include-snp
- id: in_exclude_ind
  doc: "List of samples to exclude in\ninput/output files."
  type: string?
  inputBinding:
    prefix: --exclude-ind
- id: in_include_ind
  doc: "List of samples to include in\ninput/output files."
  type: string?
  inputBinding:
    prefix: --include-ind
- id: in_exclude_grp
  doc: "List of populations to exclude in input\nfiles. Works only on the reference\n\
    panel of haplotypes."
  type: string?
  inputBinding:
    prefix: --exclude-grp
- id: in_include_grp
  doc: "List of populations to include in input\nfiles. Works only on the reference\n\
    panel of haplotypes."
  type: string?
  inputBinding:
    prefix: --include-grp
- id: in_input_from
  doc: "(=0)                 First physical position to consider in\ninput files."
  type: long?
  inputBinding:
    prefix: --input-from
- id: in_input_to
  doc: "(=1000000000)          Last physical position to consider in\ninput file."
  type: File?
  inputBinding:
    prefix: --input-to
- id: in_output_from
  doc: (=0)                First physical position to output.
  type: long?
  inputBinding:
    prefix: --output-from
- id: in_output_to
  doc: (=1000000000)         Last physical position to output.
  type: long?
  inputBinding:
    prefix: --output-to
- id: in_arg_unphased_pedmap
  doc: '[ --input-ped ] arg                Unphased genotypes in PED/MAP format.'
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_missing_code
  doc: (=0)               Missing data character in PED/MAP
  type: long?
  inputBinding:
    prefix: --missing-code
- id: in_arg_unphased_vcf
  doc: '[ --input-vcf ] arg                Unphased genotypes in VCF format.'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_arg_genetic_map
  doc: '[ --input-map ] arg                Genetic map in HapMap format.'
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_arg_reference_set
  doc: "[ --input-ref ] arg                Reference set of haplotypes in\nHAPS/SAMPLE\
    \ format."
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_input_in_it
  doc: "Phased haplotypes in HAPS/SAMPLE format\nused for initialisation."
  type: string?
  inputBinding:
    prefix: --input-init
- id: in_missing_maf
  doc: "MAF based initialisation of missing\ngenotypes prior to phasing"
  type: boolean?
  inputBinding:
    prefix: --missing-maf
- id: in_unphased_genotypes_chromosomex
  doc: "[ --chrX ]                         Unphased genotypes are from chromosome\n\
    X non autosomal region."
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_burn
  doc: (=7)                       Number of burn-in MCMC iterations.
  type: long?
  inputBinding:
    prefix: --burn
- id: in_prune
  doc: (=8)                      Number of pruning MCMC iterations.
  type: long?
  inputBinding:
    prefix: --prune
- id: in_main
  doc: (=20)                      Number of main MCMC iterations.
  type: long?
  inputBinding:
    prefix: --main
- id: in_run
  doc: (=1)                        Number of pruning stages
  type: long?
  inputBinding:
    prefix: --run
- id: in_no_mcmc
  doc: "No MCMC iteration (just phase given the\nreference panel haplotypes)."
  type: boolean?
  inputBinding:
    prefix: --no-mcmc
- id: in_arg_number_hidden
  doc: "[ --states ] arg (=100)            Number of hidden states used for\nphasing\
    \ (selected using Hamming\ndistance minimisation)."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_states_random
  doc: "(=0)              Number of hidden states used for\nphasing (selected at random)."
  type: long?
  inputBinding:
    prefix: --states-random
- id: in_states_p_match
  doc: "(=0)              Number of hidden states used for\nphasing (selected using\
    \ perfect match\nmaximisation)."
  type: long?
  inputBinding:
    prefix: --states-pmatch
- id: in_states_cov
  doc: "(=0)                 Number of hidden states used for\nphasing (selected using\
    \ perfect match\nthat maximise coverage of the region)."
  type: long?
  inputBinding:
    prefix: --states-cov
- id: in_arg_mean_size
  doc: "[ --window ] arg (=2)              Mean size of the windows in which\nconditioning\
    \ haplotypes are defined."
  type: boolean?
  inputBinding:
    prefix: -W
- id: in_model_version_one
  doc: "Use the graphical model to represent\nthe conditioning haplotypes (as in\n\
    SHAPEIT v1)."
  type: boolean?
  inputBinding:
    prefix: --model-version1
- id: in_effective_size
  doc: (=15000)         Effective size of the population.
  type: long?
  inputBinding:
    prefix: --effective-size
- id: in_rho
  doc: (=0.0004)                   Constant recombination rate.
  type: double?
  inputBinding:
    prefix: --rho
- id: in_input_copy_states
  doc: To specify who to copy from
  type: string?
  inputBinding:
    prefix: --input-copy-states
- id: in_arg_phased_haplotypes
  doc: '[ --output-max ] arg               Phased haplotypes in HAPS/SAMPLE'
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_v_two_do_tr_eight_three_seven
  doc: "\e[33mBasic options\e[0m:"
  type: long
  inputBinding:
    position: 0
- id: in_genome
  doc: -T [ --thread ] arg (=1)              Number of thread used for phasing.
  type: string
  inputBinding:
    position: 1
- id: in_account_dot
  doc: '--duohmm                              Phase pedigrees using the duoHMM '
  type: string
  inputBinding:
    position: 2
- id: in_algorithm_dot
  doc: '-G [ --input-gen ] arg                Unphased genotypes in GEN/SAMPLE '
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_shapeitdatetimeuuidloglog_file
  doc: "[ --output-log ] arg (=shapeit_date_time_UUID.log)\nLog file containing a\
    \ copy of the\nscreen output."
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_shapeitdatetimeuuidloglog_file)
hints: []
cwlVersion: v1.1
baseCommand:
- shapeit
