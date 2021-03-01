class: CommandLineTool
id: realignsamfile.cwl
inputs:
- id: in_filter_circular_reads
  doc: "filter the reads\nthat don't map to a\ncircular identifier\n(true/false),\n\
    default false"
  type: string?
  inputBinding:
    prefix: --filterCircularReads
- id: in_input
  doc: the input SAM/BAM
  type: string?
  inputBinding:
    prefix: --input
- id: in_filter_non_circular_sequences
  doc: "filter the sequence\nidentifiers that\nare not circular\nidentifiers\n(true/false),\n\
    default false\n"
  type: string?
  inputBinding:
    prefix: --filterNonCircularSequences
- id: in_realigns_am_file_v_one_dot_zero
  doc: "-e,--elongation <ELONGATION>                          the elongation\nfactor\
    \ [INT]"
  type: double
  inputBinding:
    position: 0
- id: in_file
  doc: -r,--reference <REFERENCE>                            the unmodified
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- realignsamfile
