class: CommandLineTool
id: hisatgenotype_HLA_genotyping_PGs.py.cwl
inputs:
- id: reference_type
  doc: 'Reference type: gene, chromosome, and genome (default: gene)'
  type: string
  inputBinding:
    prefix: --reference-type
- id: hla_list
  doc: 'A comma-separated list of HLA genes (default: A,B,C,DQA1,DQB1,DRB1)'
  type: string
  inputBinding:
    prefix: --hla-list
- id: aligner_list
  doc: 'A comma-separated list of aligners (default: hisat2.graph)'
  type: string
  inputBinding:
    prefix: --aligner-list
- id: genome_list
  doc: 'A comma-separated list of genomes (default: NA12877,NA 12878,NA12879,NA12880,NA12881,NA12882,NA12883,NA12884,
    NA12885,NA12886,NA12887,NA12888,NA12889,NA12890,NA1289 1,NA12892,NA12893)'
  type: string
  inputBinding:
    prefix: --genome-list
- id: exclude_allele_list
  doc: A comma-separated list of allleles to be excluded
  type: string
  inputBinding:
    prefix: --exclude-allele-list
- id: num_mismatch
  doc: 'Maximum number of mismatches per read alignment to be considered (default:
    0)'
  type: string
  inputBinding:
    prefix: --num-mismatch
- id: verbose
  doc: also print some statistics to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- hisatgenotype_HLA_genotyping_PGs.py
