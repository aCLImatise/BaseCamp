class: CommandLineTool
id: overlapAlign.cwl
inputs:
- id: in_mandatory_path_seqstore
  doc: Mandatory, path to seqStore sequences.
  type: File
  inputBinding:
    prefix: -S
- id: in_mandatorym_path_overlaps
  doc: Mandatorym path to ovlStore overlaps.
  type: File
  inputBinding:
    prefix: -O
- id: in_process_reads_bgnid
  doc: '[-endID]  Process reads bgnID to endID, inclusive.'
  type: string
  inputBinding:
    prefix: -r
- id: in_erate
  doc: Overlaps are computed at 'e' fraction error; must be larger than the original
    erate
  type: string
  inputBinding:
    prefix: -erate
- id: in_partial
  doc: Overlaps are 'overlapInCore -S' partial overlaps
  type: boolean
  inputBinding:
    prefix: -partial
- id: in_memory
  doc: Use up to 'm' GB of memory
  type: string
  inputBinding:
    prefix: -memory
- id: in_threads
  doc: Use up to 'n' cores
  type: string
  inputBinding:
    prefix: -threads
- id: in_vt
  doc: Increase debug verbosity. -Vt increases only trimming; -Va increases only alignment.
  type: boolean
  inputBinding:
    prefix: -Vt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- overlapAlign
