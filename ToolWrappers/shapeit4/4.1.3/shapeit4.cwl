class: CommandLineTool
id: shapeit4.cwl
inputs:
- id: in_seed
  doc: (=15052011)                Seed of the random number generator
  type: long
  inputBinding:
    prefix: --seed
- id: in_arg_number_thread
  doc: '[ --thread ] arg (=1)              Number of thread used'
  type: boolean
  inputBinding:
    prefix: -T
- id: in_arg_genotypes_phased
  doc: '[ --input ] arg                    Genotypes to be phased in VCF/BCF'
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_scaffold_haplotypes
  doc: '[ --scaffold ] arg                 Scaffold of haplotypes in VCF/BCF'
  type: boolean
  inputBinding:
    prefix: -S
- id: in_arg_target_region
  doc: '[ --region ] arg                   Target region'
  type: boolean
  inputBinding:
    prefix: -R
- id: in_use_ps
  doc: "Informs phasing using PS field from\nread based phasing"
  type: string
  inputBinding:
    prefix: --use-PS
- id: in_sequencing
  doc: "Default parameter setting for\nsequencing data (e.g. high variant\ndensity)"
  type: boolean
  inputBinding:
    prefix: --sequencing
- id: in_mcmc_iterations
  doc: "(=5b,1p,1b,1p,1b,1p,5m)\nIteration scheme of the MCMC"
  type: long
  inputBinding:
    prefix: --mcmc-iterations
- id: in_mcmc_prune
  doc: (=0.999)             Pruning threshold in genotype graphs
  type: double
  inputBinding:
    prefix: --mcmc-prune
- id: in_pb_wt_modulo
  doc: "(=0.02)             Storage frequency of PBWT indexes in cM\n(i.e. storage\
    \ every 0.02 cM by default)"
  type: double
  inputBinding:
    prefix: --pbwt-modulo
- id: in_pb_wt_depth
  doc: (=4)                 Depth of PBWT indexes to condition on
  type: long
  inputBinding:
    prefix: --pbwt-depth
- id: in_pb_wt_mac
  doc: "(=2)                   Minimal Minor Allele Count at which\nPBWT is evaluated"
  type: long
  inputBinding:
    prefix: --pbwt-mac
- id: in_pb_wt_mdr
  doc: "(=0.5)                 Maximal Missing Data Rate at which PBWT\nis evaluated"
  type: double
  inputBinding:
    prefix: --pbwt-mdr
- id: in_ibd_two_length
  doc: "(=3)                Minimal size of IBD2 tracks for\nbuilding copying constraints"
  type: long
  inputBinding:
    prefix: --ibd2-length
- id: in_ibd_two_maf
  doc: "(=0.01)                Minimal Minor Allele Frequency for\nvariants to be\
    \ considered in the IBD2\nmapping"
  type: long
  inputBinding:
    prefix: --ibd2-maf
- id: in_ibd_two_mdr
  doc: "(=0.5)                 Maximal Missing data rate for variants\nto be considered\
    \ in the IBD2 mapping"
  type: long
  inputBinding:
    prefix: --ibd2-mdr
- id: in_ibd_two_count
  doc: "(=150)               Minimal number of filtered variants in\nIBD2 tracks"
  type: long
  inputBinding:
    prefix: --ibd2-count
- id: in_ibd_two_output
  doc: "Output all IBD2 constraints in the\nspecified file (useful for debugging!)"
  type: File
  inputBinding:
    prefix: --ibd2-output
- id: in_arg_minimal_size
  doc: '[ --window ] arg (=2.5)            Minimal size of the phasing window in'
  type: boolean
  inputBinding:
    prefix: -W
- id: in_arg_phased_haplotypes
  doc: '[ --output ] arg                   Phased haplotypes in VCF/BCF format'
  type: boolean
  inputBinding:
    prefix: -O
- id: in_log
  doc: Log file
  type: File
  inputBinding:
    prefix: --log
- id: in_cm
  doc: --effective-size arg (=15000)         Effective size of the population
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_ibd_two_output
  doc: "Output all IBD2 constraints in the\nspecified file (useful for debugging!)"
  type: File
  outputBinding:
    glob: $(inputs.in_ibd_two_output)
cwlVersion: v1.1
baseCommand:
- shapeit4
