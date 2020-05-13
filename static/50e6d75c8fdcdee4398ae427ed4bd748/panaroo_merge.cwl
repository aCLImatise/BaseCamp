class: CommandLineTool
id: panaroo_merge.cwl
inputs:
- id: min_edge_support_sv
  doc: minimum edge support required to call structural variants in the presence/absence
    sv file (default=max(2, 0.01*n_samples))
  type: long
  inputBinding:
    prefix: --min_edge_support_sv
- id: threads
  doc: number of threads to use (default=1)
  type: string
  inputBinding:
    prefix: --threads
- id: verbose
  doc: print additional output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: directories
  doc: Location of seperate Panaroo output directories
  type: string[]
  inputBinding:
    prefix: --directories
- id: out_dir
  doc: location of a new output directory
  type: string
  inputBinding:
    prefix: --out_dir
- id: threshold
  doc: sequence identity threshold (default=0.95)
  type: string
  inputBinding:
    prefix: --threshold
- id: family_threshold
  doc: protein family sequence identity threshold (default=0.7)
  type: string
  inputBinding:
    prefix: --family_threshold
- id: len_dif_percent
  doc: length difference cutoff (default=0.95)
  type: string
  inputBinding:
    prefix: --len_dif_percent
- id: merge_paralogs
  doc: don't split paralogs
  type: boolean
  inputBinding:
    prefix: --merge_paralogs
- id: length_outlier_support_proportion
  doc: proportion of genomes supporting a gene with a length more than 1.5x outside
    the interquatile range for genes in the same cluster (default=0.01). Genes failing
    this test will be re-annotated at the shorter length
  type: long
  inputBinding:
    prefix: --length_outlier_support_proportion
- id: alignment
  doc: "Output alignments of core genes or all genes. Options are 'core' and 'pan'.\
    \ Default: 'None'"
  type: string
  inputBinding:
    prefix: --alignment
- id: aligner
  doc: "Specify an aligner. Options:'prank', 'clustal', and default: 'mafft'"
  type: string
  inputBinding:
    prefix: --aligner
- id: core_threshold
  doc: Core-genome sample threshold (default=0.95)
  type: string
  inputBinding:
    prefix: --core_threshold
outputs: []
cwlVersion: v1.1
baseCommand:
- panaroo-merge
