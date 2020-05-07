class: CommandLineTool
id: panaroo_msa.cwl
inputs:
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
- id: out_dir
  doc: location of the Panaroo output directory
  type: string
  inputBinding:
    prefix: --out_dir
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
- panaroo-msa
