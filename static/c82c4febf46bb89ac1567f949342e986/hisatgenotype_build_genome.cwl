class: CommandLineTool
id: hisatgenotype_build_genome.py.cwl
inputs:
- id: base_fname
  doc: 'base filename for genotype genome (default: genotype_genome)'
  type: string
  inputBinding:
    prefix: --base-fname
- id: threads
  doc: Number of threads
  type: string
  inputBinding:
    prefix: --threads
- id: database_list
  doc: 'A comma-separated list of databases (default: hla,codis,cyp)'
  type: string
  inputBinding:
    prefix: --database-list
- id: common_var
  doc: Include common variants from dbSNP
  type: boolean
  inputBinding:
    prefix: --commonvar
- id: clin_var
  doc: Include variants from ClinVar database
  type: boolean
  inputBinding:
    prefix: --clinvar
- id: inter_gap
  doc: Maximum distance for variants to be in the same haplotype
  type: long
  inputBinding:
    prefix: --inter-gap
- id: intra_gap
  doc: Break a haplotype into several haplotypes
  type: long
  inputBinding:
    prefix: --intra-gap
- id: aligner
  doc: 'Aligner (default: hisat2)'
  type: string
  inputBinding:
    prefix: --aligner
- id: linear_index
  doc: Build linear index
  type: boolean
  inputBinding:
    prefix: --linear-index
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_build_genome.py
