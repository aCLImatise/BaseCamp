class: CommandLineTool
id: fasten_trim.cwl
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
- id: in_first_base
  doc: 'The first base to keep (default: 0)'
  type: long
  inputBinding:
    prefix: --first-base
- id: in_last_base
  doc: "The last base to keep. If negative, counts from the\nright. (default: 0)\n"
  type: long
  inputBinding:
    prefix: --last-base
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasten_trim
