class: CommandLineTool
id: purge_haplotigs_clip.cwl
inputs:
- id: in_primary
  doc: Primary contigs (curated.fasta by default) from the 'purge' stage.
  type: boolean?
  inputBinding:
    prefix: -primary
- id: in_out_prefix
  doc: Output file prefix. DEFAULT = clip
  type: File?
  inputBinding:
    prefix: -outPrefix
- id: in_length
  doc: Minimum overlap length to trigger clipping. DEFAULT = 10000
  type: boolean?
  inputBinding:
    prefix: -length
- id: in_gap
  doc: Maximum end gap to allow clipping. DEFAULT = 10000
  type: boolean?
  inputBinding:
    prefix: -gap
- id: in_ratio
  doc: Max allowable gap to alignment ratio. DEFAULT = 0.5
  type: boolean?
  inputBinding:
    prefix: -ratio
- id: in_threads
  doc: Threds to use. DEFAULT = 4
  type: boolean?
  inputBinding:
    prefix: -threads
- id: in_h
  doc: ''
  type: string?
  inputBinding:
    prefix: -h
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_prefix
  doc: Output file prefix. DEFAULT = clip
  type: File?
  outputBinding:
    glob: $(inputs.in_out_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
- clip
