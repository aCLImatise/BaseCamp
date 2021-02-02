class: CommandLineTool
id: fasten_shuffle.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_de_shuffle
  doc: Deshuffle reads from stdin
  type: boolean
  inputBinding:
    prefix: --deshuffle
- id: in_one
  doc: "Forward reads. If deshuffling, reads are written to\nthis file."
  type: long
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: "Forward reads. If deshuffling, reads are written to\nthis file.\n"
  type: long
  inputBinding:
    prefix: '-2'
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasten_shuffle
