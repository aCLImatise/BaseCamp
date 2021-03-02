class: CommandLineTool
id: generateCorrectionLayouts.cwl
inputs:
- id: in_mandatory_path_seqstore
  doc: mandatory path to seqStore
  type: File?
  inputBinding:
    prefix: -S
- id: in_mandatory_path_ovlstore
  doc: mandatory path to ovlStore
  type: File?
  inputBinding:
    prefix: -O
- id: in_scores
  doc: "overlap score thresholds (from filterCorrectionOverlaps)\nif not supplied,\
    \ will be estimated from ovlStore"
  type: string?
  inputBinding:
    prefix: -scores
- id: in_output_layouts_store
  doc: output layouts to store 'corStore'
  type: string?
  inputBinding:
    prefix: -C
- id: in_write_verbose_logging
  doc: write extremely verbose logging to 'corStore.log'
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_dump_data_used
  doc: dump the data used to estimate overlap scores to 'corStore.scores'
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_process_reads_starting
  doc: process reads starting at bgnID
  type: string?
  inputBinding:
    prefix: -b
- id: in_process_reads_including
  doc: process reads up to but not including endID
  type: string?
  inputBinding:
    prefix: -e
- id: in_el
  doc: minimum length of evidence overlaps
  type: long?
  inputBinding:
    prefix: -eL
- id: in_ee
  doc: maximum error rate of evidence overlaps
  type: string?
  inputBinding:
    prefix: -eE
- id: in_ec
  doc: maximum coverage of evidence reads to emit
  type: string?
  inputBinding:
    prefix: -eC
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- generateCorrectionLayouts
