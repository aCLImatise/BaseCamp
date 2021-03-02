class: CommandLineTool
id: dcmmklut.cwl
inputs:
- id: in_arguments
  doc: print expanded command line arguments
  type: boolean?
  inputBinding:
    prefix: --arguments
- id: in_quiet
  doc: quiet mode, print no warnings and errors
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_verbose
  doc: verbose mode, print processing details
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: debug mode, print debug information
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_log_level
  doc: "[l]evel: string constant\n(fatal, error, warn, info, debug, trace)\nuse level\
    \ l for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_config
  doc: "[f]ilename: string\nuse config file f for the logger"
  type: boolean?
  inputBinding:
    prefix: --log-config
- id: in_min_density
  doc: "[v]alue: integer (0..65535, default: 20)\nset min density to v (in hundreds\
    \ of OD)"
  type: boolean?
  inputBinding:
    prefix: --min-density
- id: in_max_density
  doc: "[v]alue: integer (0..65535, default: 300)\nset max density to v (in hundreds\
    \ of OD)"
  type: boolean?
  inputBinding:
    prefix: --max-density
- id: in_bits
  doc: "[n]umber: integer\ncreate LUT with n bit values (8..16, default: 16)"
  type: boolean?
  inputBinding:
    prefix: --bits
- id: in_entries
  doc: "[n]umber: integer\ncreate LUT with n entries (1..65536, default: 256)"
  type: boolean?
  inputBinding:
    prefix: --entries
- id: in_first_mapped
  doc: "[n]umber: integer\nfirst input value mapped (-31768..65535, default: 0)"
  type: boolean?
  inputBinding:
    prefix: --first-mapped
- id: in_random
  doc: "[n]umber: unsigned integer\nperform n randomly selected permutations on the\
    \ LUT"
  type: boolean?
  inputBinding:
    prefix: --random
- id: in_random_seed
  doc: "[n]umber: unsigned integer\ninitialize the random-number generator with n\n\
    (default: 0, for reproducible results)"
  type: boolean?
  inputBinding:
    prefix: --random-seed
- id: in_order
  doc: "[n]umber: integer\nuse polynomial curve fitting algorithm with order n\n(0..99,\
    \ default: 5)"
  type: boolean?
  inputBinding:
    prefix: --order
- id: in_explanation
  doc: "[n]ame: string\nLUT explanation (default: automatically created)"
  type: boolean?
  inputBinding:
    prefix: --explanation
- id: in_byte_align
  doc: "create byte-aligned LUT\n(default for and only with 8 bit values)"
  type: boolean?
  inputBinding:
    prefix: --byte-align
- id: in_dcm_img_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- dcmmklut
