class: CommandLineTool
id: hisatgenotype_HLA_genotyping_PGs.py.cwl
inputs:
- id: in_reference_type
  doc: "Reference type: gene, chromosome, and genome (default:\ngene)"
  type: string?
  inputBinding:
    prefix: --reference-type
- id: in_hla_list
  doc: "A comma-separated list of HLA genes (default:\nA,B,C,DQA1,DQB1,DRB1)"
  type: long?
  inputBinding:
    prefix: --hla-list
- id: in_aligner_list
  doc: "A comma-separated list of aligners (default:\nhisat2.graph)"
  type: long?
  inputBinding:
    prefix: --aligner-list
- id: in_genome_list
  doc: "A comma-separated list of genomes (default: NA12888,NA\n12889,NA12886,NA12881,NA12880,NA12883,NA12882,NA12885,\n\
    NA12884,NA12887,NA12877,NA12878,NA12879,NA12892,NA1289\n3,NA12890,NA12891)"
  type: long?
  inputBinding:
    prefix: --genome-list
- id: in_exclude_allele_list
  doc: A comma-separated list of allleles to be excluded
  type: string?
  inputBinding:
    prefix: --exclude-allele-list
- id: in_num_mismatch
  doc: "Maximum number of mismatches per read alignment to be\nconsidered (default:\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --num-mismatch
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
- hisatgenotype_HLA_genotyping_PGs.py
