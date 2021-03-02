class: CommandLineTool
id: medaka_stitch.cwl
inputs:
- id: in_debug
  doc: 'Verbose logging of debug information. (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_quiet
  doc: 'Minimal logging; warnings only). (default: 20)'
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_regions
  doc: "Genomic ref_names to process, or a bed file. (default:\nNone)"
  type: string[]
  inputBinding:
    prefix: --regions
- id: in_threads
  doc: 'Number of worker processes to use. (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_fill_gaps
  doc: "Don't fill gaps in consensus sequence with draft\nsequence. (default: True)\n"
  type: boolean?
  inputBinding:
    prefix: --no-fillgaps
- id: in_inputs
  doc: Consensus .hdf files.
  type: string
  inputBinding:
    position: 0
- id: in_draft
  doc: "Draft .fasta. Consensus gaps will be filled with\nunpolished draft sequence\
    \ to avoid contig\nfragmentation."
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: Output .fasta.
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/medaka:1.2.3--py36hbcc4abb_0
cwlVersion: v1.1
baseCommand:
- medaka
- stitch
