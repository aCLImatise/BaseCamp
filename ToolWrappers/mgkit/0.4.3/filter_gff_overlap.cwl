class: CommandLineTool
id: filter_gff_overlap.cwl
inputs:
- id: in_verbose
  doc: "-s, --size INTEGER              Size of the overlap that triggers the filter\n\
    [default: 100]\n-t, --sorted                    If the GFF file is sorted (all\
    \ of a sequence\nannotations are contiguos and sorted by\nstrand) can use less\
    \ memory, `sort -s -k 1,1\n-k 7,7` can be used\n-c, --choose-func TEXT       \
    \   Function to choose between two overlapping\nannotations\n-a, --sort-attr [bitscore|identity|length]\n\
    Attribute to sort annotations before\nfiltering (default bitscore)  [default:\n\
    bitscore]\n--progress                      Shows Progress Bar\n--help        \
    \                  Show this message and exit.\n"
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
- overlap
