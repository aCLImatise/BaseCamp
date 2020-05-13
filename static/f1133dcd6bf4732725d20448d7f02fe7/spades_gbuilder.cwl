class: CommandLineTool
id: spades_gbuilder.cwl
inputs:
- id: k
  doc: k-mer length to use
  type: string
  inputBinding:
    prefix: -k
- id: t
  doc: '# of threads to use'
  type: string
  inputBinding:
    prefix: -t
- id: tmp_dir
  doc: scratch directory to use
  type: string
  inputBinding:
    prefix: -tmp-dir
- id: b
  doc: sorting buffer size, per thread
  type: string
  inputBinding:
    prefix: -b
- id: unit_igs
  doc: produce unitigs (default)
  type: boolean
  inputBinding:
    prefix: --unitigs
- id: fast_g
  doc: produce graph in FASTG format
  type: boolean
  inputBinding:
    prefix: --fastg
- id: gfa
  doc: produce graph in GFA1 format
  type: boolean
  inputBinding:
    prefix: --gfa
- id: spades
  doc: produce graph in SPAdes internal format
  type: boolean
  inputBinding:
    prefix: --spades
outputs: []
cwlVersion: v1.1
baseCommand:
- spades-gbuilder
