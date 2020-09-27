class: CommandLineTool
id: correctOverlaps.cwl
inputs:
- id: in_seqstore_path_sequence
  doc: seqStore           path to a sequence store
  type: boolean
  inputBinding:
    prefix: -S
- id: in_path_overlap_store
  doc: ovlStore           path to an overlap store
  type: boolean
  inputBinding:
    prefix: -O
- id: in_bgn_end_compute
  doc: bgn end            only compute for reads bgn-end
  type: boolean
  inputBinding:
    prefix: -R
- id: in_inputname_read_corrections
  doc: input-name         read corrections from 'input-name'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_outputname_write_rates
  doc: output-name        write updated error rates to 'output-name'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_numthreads_used_thread
  doc: num-threads        not used; only one thread used
  type: boolean
  inputBinding:
    prefix: -t
- id: in_ignore_overlaps_shorter
  doc: min-len            ignore overlaps shorter than this
  type: boolean
  inputBinding:
    prefix: -l
- id: in_maxerate_ignore_overlaps
  doc: max-erate s        ignore overlaps higher than this error
  type: boolean
  inputBinding:
    prefix: -e
- id: in_check_trival_dna
  doc: check trival dna   ignore alignment errors in simple sequence
  type: boolean
  inputBinding:
    prefix: -s
- id: in_seq_store
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_sequence
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_store
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- correctOverlaps
