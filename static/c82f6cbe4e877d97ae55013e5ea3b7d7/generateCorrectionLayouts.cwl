class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/generateCorrectionLayouts.cwl
inputs:
- id: mandatory_path_to
  doc: mandatory path to seqStore
  type: string
  inputBinding:
    prefix: -S
- id: mandatory_path_ovlstore
  doc: mandatory path to ovlStore
  type: string
  inputBinding:
    prefix: -O
- id: scores
  doc: overlap score thresholds (from filterCorrectionOverlaps) if not supplied, will
    be estimated from ovlStore
  type: string
  inputBinding:
    prefix: -scores
- id: output_layouts_store
  doc: output layouts to store 'corStore'
  type: string
  inputBinding:
    prefix: -C
- id: write_extremely_verbose
  doc: write extremely verbose logging to 'corStore.log'
  type: boolean
  inputBinding:
    prefix: -V
- id: dump_data_used
  doc: dump the data used to estimate overlap scores to 'corStore.scores'
  type: boolean
  inputBinding:
    prefix: -D
- id: process_reads_starting
  doc: process reads starting at bgnID
  type: string
  inputBinding:
    prefix: -b
- id: process_reads_including
  doc: process reads up to but not including endID
  type: string
  inputBinding:
    prefix: -e
- id: el
  doc: minimum length of evidence overlaps
  type: long
  inputBinding:
    prefix: -eL
- id: ee
  doc: maximum error rate of evidence overlaps
  type: string
  inputBinding:
    prefix: -eE
- id: ec
  doc: maximum coverage of evidence reads to emit
  type: string
  inputBinding:
    prefix: -eC
outputs: []
cwlVersion: v1.1
baseCommand:
- generateCorrectionLayouts
