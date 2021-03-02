class: CommandLineTool
id: mdust.cwl
inputs:
- id: in_cutoff_value_lower
  doc: "<cut-off> value is 28 (lower values might mask more,\nbut possibly still useful\
    \ sequence; > 64 will rarely mask poly-triplets)"
  type: long?
  inputBinding:
    prefix: -v
- id: in_maximum_word_size
  doc: maximum word size to <wsize> (default 3)
  type: long?
  inputBinding:
    prefix: -w
- id: in_fasta_output_disabled
  doc: "fasta output is not disabled by -c, set the masking letter type:\nN ('N',\
    \ default), X ('X'), L (make lowercase)"
  type: string?
  inputBinding:
    prefix: -m
- id: in_masking_coordinates_seqlength
  doc: "masking coordinates only:\nseq_name, seqlength, mask_start, mask_end  (tab\
    \ delimited)\n"
  type: string?
  inputBinding:
    prefix: -c
- id: in_fast_a_file
  doc: ''
  type: File?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- mdust
