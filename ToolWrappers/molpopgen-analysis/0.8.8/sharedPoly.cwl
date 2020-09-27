class: CommandLineTool
id: sharedPoly.cwl
inputs:
- id: in_infile_sequence_data
  doc: infile (for sequence data in FASTA format)
  type: boolean
  inputBinding:
    prefix: -i
- id: in_sample_size_first
  doc: '[integer] (sample size of the first partition in the data)'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_verbose_output
  doc: (verbose output)
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sharedPoly
