class: CommandLineTool
id: ../../../correctOverlaps.cwl
inputs:
- id: path_sequence_store
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: ovlstore_path_overlap
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: bgn_end_only
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: inputname_read_corrections
  doc: input-name         read corrections from 'input-name'
  type: boolean
  inputBinding:
    prefix: -c
- id: outputname_write_rates
  doc: output-name        write updated error rates to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: numthreads_used_thread
  doc: num-threads        not used; only one thread used
  type: boolean
  inputBinding:
    prefix: -t
- id: ignore_overlaps_shorter
  doc: min-len            ignore overlaps shorter than this
  type: boolean
  inputBinding:
    prefix: -l
- id: maxerate_ignore_overlaps
  doc: max-erate s        ignore overlaps higher than this error
  type: boolean
  inputBinding:
    prefix: -e
- id: check_trival_dna
  doc: check trival dna   ignore alignment errors in simple sequence
  type: boolean
  inputBinding:
    prefix: -s
- id: seq_store
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: sequence
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: store
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- correctOverlaps
