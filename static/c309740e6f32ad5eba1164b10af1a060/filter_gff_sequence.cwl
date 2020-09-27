class: CommandLineTool
id: filter_gff_sequence.cwl
inputs:
- id: in_verbose
  doc: "-t, --sorted                    If the GFF file is sorted (all of a sequence\n\
    annotations are contiguos) can use less\nmemory, `sort -s -k 1,1` can be used\n\
    -a, --attribute [evalue|bitscore|identity|length]\nAttribute on which to apply\
    \ the filter\n[default: bitscore]\n-f, --function [mean|median|quantile|std|max|min]\n\
    Function for filtering  [default: mean]\n-l, --value FLOAT               Value\
    \ for the function (used for *std* and\n*quantile*)\n-c, --comparison [gt|ge|lt|le]\
    \  Type of comparison (e.g. ge -> greater than\nor equal to)  [default: ge]\n\
    --progress                      Shows Progress Bar\n--help                   \
    \       Show this message and exit.\n"
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_file
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- filter-gff
- sequence
