class: CommandLineTool
id: sortByRefAndCor.pl.cwl
inputs:
- id: in_contig_name_field
  doc: ":   contig name is in the field POS (1-based)\nof input lines."
  type: long?
  inputBinding:
    prefix: --k
- id: in_contig_cordinate_field
  doc: ":   contig cordinate is in the field COR (1-based)\nof input lines."
  type: long?
  inputBinding:
    prefix: --c
- id: in_tmp
  doc: ': temp directory [default=/tmp]'
  type: Directory?
  inputBinding:
    prefix: --tmp
- id: in_input
  doc: "input file to sort. If '-' is specified, \nthen reads from STDIN."
  type: string
  inputBinding:
    position: 0
- id: in_ref_dict
  doc: ".fai file, or ANY file that has contigs, in the\ndesired soting order, as\
    \ its first column."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sortByRefAndCor.pl
