class: CommandLineTool
id: hisatgenotype_locus.py.cwl
inputs:
- id: random_seed
  doc: 'A seeding number for randomness (default: 1)'
  type: string
  inputBinding:
    prefix: --random-seed
- id: num_edit_dist
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    2)'
  type: string
  inputBinding:
    prefix: --num-editdist
- id: per_base_error_rate
  doc: 'Per basepair error rate in percentage when simulating reads (default: 0.0)'
  type: string
  inputBinding:
    prefix: --perbase-errorrate
- id: per_base_snp_rate
  doc: 'Per basepair SNP rate in percentage when simulating reads (default: 0.0)'
  type: string
  inputBinding:
    prefix: --perbase-snprate
- id: skip_fragment_regions
  doc: 'A comma-separated list of regions from which no reads originate, e.g., 500-600,1200-1400
    (default: None).'
  type: string
  inputBinding:
    prefix: --skip-fragment-regions
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: verbose_level
  doc: 'also print some statistics to stderr (default: 0)'
  type: string
  inputBinding:
    prefix: --verbose-level
- id: debug
  doc: e.g., test_id:10,read_id:10000,basic_test
  type: string
  inputBinding:
    prefix: --debug
- id: assembly_base
  doc: 'base file name (default: assembly_graph)'
  type: string
  inputBinding:
    prefix: --assembly-base
- id: assembly
  doc: Perform assembly
  type: boolean
  inputBinding:
    prefix: --assembly
- id: no_error_correction
  doc: Correct sequencing errors
  type: boolean
  inputBinding:
    prefix: --no-error-correction
- id: keep_alignment
  doc: Keep alignment file
  type: boolean
  inputBinding:
    prefix: --keep-alignment
- id: only_locus_list
  doc: 'A comma-separated list of genes (default: empty, all genes)'
  type: string
  inputBinding:
    prefix: --only-locus-list
- id: discordant
  doc: Allow discordantly mapped pairs or singletons
  type: boolean
  inputBinding:
    prefix: --discordant
- id: type_primary_exons
  doc: Look at primary exons first
  type: boolean
  inputBinding:
    prefix: --type-primary-exons
- id: keep_low_abundance_alleles
  doc: Do not remove alleles with low abundance while performing typing
  type: boolean
  inputBinding:
    prefix: --keep-low-abundance-alleles
- id: assembly_verbose
  doc: Output intermediate assembly information
  type: boolean
  inputBinding:
    prefix: --assembly-verbose
- id: display_alleles
  doc: 'A comma-separated list of alleles to display in HTML (default: empty)'
  type: string
  inputBinding:
    prefix: --display-alleles
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_locus.py
