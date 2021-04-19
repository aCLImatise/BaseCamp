class: CommandLineTool
id: panaroo_msa.cwl
inputs:
- id: in_threads
  doc: number of threads to use (default=1)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: print additional output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out_dir
  doc: location of the Panaroo output directory
  type: Directory?
  inputBinding:
    prefix: --out_dir
- id: in_alignment
  doc: "Output alignments of core genes or all genes. Options\nare 'core' and 'pan'.\
    \ Default: 'None'"
  type: string?
  inputBinding:
    prefix: --alignment
- id: in_aligner
  doc: "Specify an aligner. Options:'prank', 'clustal', and\ndefault: 'mafft'"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_core_threshold
  doc: "Core-genome sample threshold (default=0.95)\n"
  type: double?
  inputBinding:
    prefix: --core_threshold
- id: in_generate_pana_roo_msa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_dir
  doc: location of the Panaroo output directory
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/panaroo:1.2.7--pyhdfd78af_0
cwlVersion: v1.1
baseCommand:
- panaroo-msa
