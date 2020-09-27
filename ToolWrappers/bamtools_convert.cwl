class: CommandLineTool
id: bamtools_convert.cwl
inputs:
- id: in_in
  doc: the input BAM file(s) [stdin]
  type: File
  inputBinding:
    prefix: -in
- id: in_list
  doc: "the input BAM file list, one\nline per file"
  type: File
  inputBinding:
    prefix: -list
- id: in_out
  doc: the output BAM file [stdout]
  type: File
  inputBinding:
    prefix: -out
- id: in_format
  doc: "the output file format - see\nREADME for recognized formats"
  type: File
  inputBinding:
    prefix: -format
- id: in_region
  doc: "genomic region. Index file is\nrecommended for better performance, and is\n\
    used automatically if it exists. See\n'bamtools help index' for more details on\n\
    creating one"
  type: File
  inputBinding:
    prefix: -region
- id: in_fast_a
  doc: FASTA reference file
  type: File
  inputBinding:
    prefix: -fasta
- id: in_map_qual
  doc: print the mapping qualities
  type: boolean
  inputBinding:
    prefix: -mapqual
- id: in_noheader
  doc: omit the SAM header from
  type: boolean
  inputBinding:
    prefix: -noheader
- id: in_output
  doc: 'Help:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: the output BAM file [stdout]
  type: File
  outputBinding:
    glob: $(inputs.in_out)
- id: out_format
  doc: "the output file format - see\nREADME for recognized formats"
  type: File
  outputBinding:
    glob: $(inputs.in_format)
cwlVersion: v1.1
baseCommand:
- bamtools
- convert
