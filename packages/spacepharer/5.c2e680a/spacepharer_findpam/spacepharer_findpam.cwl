class: CommandLineTool
id: spacepharer_findpam.cwl
inputs:
- id: in_flanking_seq_len
  doc: Length of protospacer flanking sequence to extract for possible PAMs scanning
    [10]
  type: long?
  inputBinding:
    prefix: --flanking-seq-len
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spacepharer:5.c2e680a--h95f258a_0
cwlVersion: v1.1
baseCommand:
- spacepharer
- findpam
