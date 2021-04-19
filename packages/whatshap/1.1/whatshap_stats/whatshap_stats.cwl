class: CommandLineTool
id: whatshap_stats.cwl
inputs:
- id: in_gtf
  doc: Write phased blocks to GTF file.
  type: File?
  inputBinding:
    prefix: --gtf
- id: in_sample
  doc: "Name of the sample to process. If not given, use first\nsample found in VCF."
  type: string?
  inputBinding:
    prefix: --sample
- id: in_chr_lengths
  doc: "Read chromosome lengths from FILE (one line per\nchromosome, tab separated\
    \ '<chr> <length>'). Needed to\ncompute N50 values."
  type: File?
  inputBinding:
    prefix: --chr-lengths
- id: in_tsv
  doc: Write statistics in tab-separated value format to FILE
  type: File?
  inputBinding:
    prefix: --tsv
- id: in_only_sn_vs
  doc: Only process SNVs and ignore all other variants.
  type: boolean?
  inputBinding:
    prefix: --only-snvs
- id: in_block_list
  doc: Write list of all blocks to FILE (one block per line)
  type: File?
  inputBinding:
    prefix: --block-list
- id: in_chromosome
  doc: "Name of chromosome to process. If not given, all\nchromosomes in the input\
    \ VCF are considered. Can be\nused multiple times\n"
  type: string?
  inputBinding:
    prefix: --chromosome
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/whatshap:1.1--py39h7cff6ad_0
cwlVersion: v1.1
baseCommand:
- whatshap
- stats
