class: CommandLineTool
id: correctOverlaps.cwl
inputs:
- id: in_seqstore_path_sequence
  doc: seqStore           path to a sequence store
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_ovlstore_path_overlap
  doc: ovlStore           path to an overlap store
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_bgn_end_only
  doc: bgn end            only compute for reads bgn-end
  type: boolean?
  inputBinding:
    prefix: -R
- id: in_inputname_read_corrections
  doc: input-name         read corrections from 'input-name'
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_outputname_write_rates
  doc: output-name        write updated error rates to 'output-name'
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_numthreads_used_thread
  doc: num-threads        not used; only one thread used
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_minlen_ignore_overlaps
  doc: min-len            ignore overlaps shorter than this
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_maxerate_s_ignore
  doc: max-erate s        ignore overlaps higher than this error
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_check_trival_dna
  doc: check trival dna   ignore alignment errors in simple sequence
  type: boolean?
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
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/canu:2.1.1--he1b5a44_1
cwlVersion: v1.1
baseCommand:
- correctOverlaps
