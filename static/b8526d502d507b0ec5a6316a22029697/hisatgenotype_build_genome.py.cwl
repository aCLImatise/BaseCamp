class: CommandLineTool
id: hisatgenotype_build_genome.py.cwl
inputs:
- id: in_base_fname
  doc: "base filename for genotype genome (default:\ngenotype_genome)"
  type: File?
  inputBinding:
    prefix: --base-fname
- id: in_threads
  doc: Number of threads
  type: long?
  inputBinding:
    prefix: --threads
- id: in_database_list
  doc: "A comma-separated list of databases (default:\nhla,codis,cyp)"
  type: string?
  inputBinding:
    prefix: --database-list
- id: in_common_var
  doc: Include common variants from dbSNP
  type: boolean?
  inputBinding:
    prefix: --commonvar
- id: in_clin_var
  doc: Include variants from ClinVar database
  type: boolean?
  inputBinding:
    prefix: --clinvar
- id: in_inter_gap
  doc: "Maximum distance for variants to be in the same\nhaplotype"
  type: string?
  inputBinding:
    prefix: --inter-gap
- id: in_intra_gap
  doc: Break a haplotype into several haplotypes
  type: string?
  inputBinding:
    prefix: --intra-gap
- id: in_aligner
  doc: 'Aligner (default: hisat2)'
  type: long?
  inputBinding:
    prefix: --aligner
- id: in_linear_index
  doc: Build linear index
  type: boolean?
  inputBinding:
    prefix: --linear-index
- id: in_verbose
  doc: also print some statistics to stderr
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_build_genome.py
