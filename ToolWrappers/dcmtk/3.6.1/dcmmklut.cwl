class: CommandLineTool
id: dcmmklut.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean
  inputBinding:
    prefix: --arguments
- id: in_quiet_quiet_mode
  doc: --quiet         quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in__verbose_details
  doc: --verbose       verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: in__debug_information
  doc: --debug         debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: in_ll
  doc: "--log-level     [l]evel: string constant\n(fatal, error, warn, info, debug,\
    \ trace)\nuse level l for the logger"
  type: boolean
  inputBinding:
    prefix: -ll
- id: in_lc
  doc: "--log-config    [f]ilename: string\nuse config file f for the logger"
  type: boolean
  inputBinding:
    prefix: -lc
- id: in_min_density
  doc: "[v]alue: integer (0..65535, default: 20)\nset min density to v (in hundreds\
    \ of OD)"
  type: boolean
  inputBinding:
    prefix: --min-density
- id: in_max_density
  doc: "[v]alue: integer (0..65535, default: 300)\nset max density to v (in hundreds\
    \ of OD)"
  type: boolean
  inputBinding:
    prefix: --max-density
- id: in__bits_umber
  doc: "--bits          [n]umber: integer\ncreate LUT with n bit values (8..16, default:\
    \ 16)"
  type: boolean
  inputBinding:
    prefix: -b
- id: in__entries_umber
  doc: "--entries       [n]umber: integer\ncreate LUT with n entries (1..65536, default:\
    \ 256)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in__firstmapped_mapped
  doc: "--first-mapped  [n]umber: integer\nfirst input value mapped (-31768..65535,\
    \ default: 0)"
  type: boolean
  inputBinding:
    prefix: -f
- id: in__random_umber
  doc: "--random        [n]umber: unsigned integer\nperform n randomly selected permutations\
    \ on the LUT"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_random_seed
  doc: "[n]umber: unsigned integer\ninitialize the random-number generator with n\n\
    (default: 0, for reproducible results)"
  type: boolean
  inputBinding:
    prefix: --random-seed
- id: in__order_umber
  doc: "--order         [n]umber: integer\nuse polynomial curve fitting algorithm\
    \ with order n\n(0..99, default: 5)"
  type: boolean
  inputBinding:
    prefix: -o
- id: in__explanation_stringlut
  doc: "--explanation   [n]ame: string\nLUT explanation (default: automatically created)"
  type: boolean
  inputBinding:
    prefix: -E
- id: in__bytealign_create
  doc: "--byte-align    create byte-aligned LUT\n(default for and only with 8 bit\
    \ values)"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_dcm_img_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dcmmklut
