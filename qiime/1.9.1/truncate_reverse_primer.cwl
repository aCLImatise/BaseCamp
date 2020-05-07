class: CommandLineTool
id: truncate_reverse_primer.py.cwl
inputs:
- id: fast_a_fp
  doc: Fasta file.  Needs to have fasta labels in proper demultiplexed format. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_fp
- id: mapping_fp
  doc: Mapping filepath.  ReversePrimer field required. Reverse primers need to be
    in 5'->3' orientation. [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- truncate_reverse_primer.py
