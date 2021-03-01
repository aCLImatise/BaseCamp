class: CommandLineTool
id: preseq_c_curve.cwl
inputs:
- id: in_output
  doc: 'yield output file (default: stdout)'
  type: File?
  inputBinding:
    prefix: -output
- id: in_step
  doc: step size in extrapolations [1000000.000000]
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_verbose
  doc: print more information
  type: boolean?
  inputBinding:
    prefix: -verbose
- id: in_pe
  doc: input is paired end read file
  type: boolean?
  inputBinding:
    prefix: -pe
- id: in_hist
  doc: input is a text file containing the observed histogram
  type: boolean?
  inputBinding:
    prefix: -hist
- id: in_vals
  doc: input is a text file containing only the observed
  type: boolean?
  inputBinding:
    prefix: -vals
- id: in_seg_len
  doc: "maximum segment length when merging paired end bam\nreads [5000]"
  type: boolean?
  inputBinding:
    prefix: -seg_len
- id: in_seed
  doc: seed for random number generator [408]
  type: boolean?
  inputBinding:
    prefix: -seed
- id: in_about
  doc: print about message
  type: boolean?
  inputBinding:
    prefix: -about
- id: in_counts
  doc: '-B, -bam      input is in BAM format  '
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: 'yield output file (default: stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/preseq:3.1.2--hfb6f838_0
cwlVersion: v1.1
baseCommand:
- preseq
- c_curve
