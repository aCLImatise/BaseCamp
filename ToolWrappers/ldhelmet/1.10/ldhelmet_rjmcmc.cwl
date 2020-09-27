class: CommandLineTool
id: ldhelmet_rjmcmc.cwl
inputs:
- id: in__display_version
  doc: '[ --version ]                      Display version.'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_seed
  doc: (=5489)                    Seed for pseudo-random number
  type: long
  inputBinding:
    prefix: --seed
- id: in_arg_name_output
  doc: '[ --output_file ] arg              Name of output file.'
  type: File
  inputBinding:
    prefix: -o
- id: in_stats_thin
  doc: (=1000)              Thinning parameter for summary
  type: long
  inputBinding:
    prefix: --stats_thin
- id: in_burn_in
  doc: "(=1000)                 Number of iterations for burn-in (in\naddition to\
    \ number of iterations to run\nrjMCMC)."
  type: long
  inputBinding:
    prefix: --burn_in
- id: in_arg_block_penalty
  doc: '[ --block_penalty ] arg (=10)      Block penalty for rjMCMC.'
  type: boolean
  inputBinding:
    prefix: -b
- id: in_prior_rate
  doc: (=1)                 Prior mean on recombination rate.
  type: long
  inputBinding:
    prefix: --prior_rate
- id: in_arg_sequence_file
  doc: '[ --seq_file ] arg                 Sequence file.'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_twosite_likelihood
  doc: '[ --lk_file ] arg                  Two-site likelihood table.'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_arg_pade_coefficients
  doc: '[ --pade_file ] arg                Pade coefficients.'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_prior_ancestral
  doc: '[ --prior_file ] arg               Prior on ancestral allele for each'
  type: boolean
  inputBinding:
    prefix: -a
- id: in_arg_window_size
  doc: '[ --window_size ] arg (=50)        Window size.'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_pade_resolution
  doc: (=10)           Pade grid increment.
  type: long
  inputBinding:
    prefix: --pade_resolution
- id: in_pade_max_rho
  doc: (=1000)            Maximum Pade grid value.
  type: long
  inputBinding:
    prefix: --pade_max_rho
- id: in_partition_length
  doc: (=4001)        Partition length (number of SNPs).
  type: long
  inputBinding:
    prefix: --partition_length
- id: in_overlap_length
  doc: (=200)           Overlap length.
  type: long
  inputBinding:
    prefix: --overlap_length
- id: in_pos_file
  doc: SNP positions for alternative input
  type: string
  inputBinding:
    prefix: --pos_file
- id: in_max_lk_start
  doc: "(=0.001)           Rho value to begin maximum likelihood\nestimation of background\
    \ rate."
  type: double
  inputBinding:
    prefix: --max_lk_start
- id: in_max_lk_end
  doc: "(=0.29999999999999999)\nRho value to end maximum likelihood\nestimation of\
    \ background rate."
  type: double
  inputBinding:
    prefix: --max_lk_end
- id: in_max_lk_resolution
  doc: "(=0.001)      Amount to increment by for maximum\nlikelihood estimation of\
    \ background\nrate.\n"
  type: double
  inputBinding:
    prefix: --max_lk_resolution
- id: in_generator_dot
  doc: --num_threads arg (=1)                Number of threads.
  type: string
  inputBinding:
    position: 0
- id: in_statistics_dot
  doc: -n [ --num_iter ] arg (=10000)        Number of iterations to run rjMCMC.
  type: string
  inputBinding:
    position: 1
- id: in_site_dot
  doc: -m [ --mut_mat_file ] arg             Mutation matrix.
  type: string
  inputBinding:
    position: 2
- id: in_format_dot
  doc: --snps_file arg                       SNPs file for alternative input format.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_name_output
  doc: '[ --output_file ] arg              Name of output file.'
  type: File
  outputBinding:
    glob: $(inputs.in_arg_name_output)
cwlVersion: v1.1
baseCommand:
- ldhelmet
- rjmcmc
