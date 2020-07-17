class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/dcmmklut.cwl
inputs:
- id: _quiet_print
  doc: --quiet         quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: _verbose_verbose
  doc: --verbose       verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: _debug_debug
  doc: --debug         debug mode, print debug information
  type: boolean
  inputBinding:
    prefix: -d
- id: ll
  doc: '--log-level     [l]evel: string constant (fatal, error, warn, info, debug,
    trace) use level l for the logger'
  type: boolean
  inputBinding:
    prefix: -ll
- id: lc
  doc: '--log-config    [f]ilename: string use config file f for the logger'
  type: boolean
  inputBinding:
    prefix: -lc
- id: min_density
  doc: '[v]alue: integer (0..65535, default: 20) set min density to v (in hundreds
    of OD)'
  type: boolean
  inputBinding:
    prefix: --min-density
- id: max_density
  doc: '[v]alue: integer (0..65535, default: 300) set max density to v (in hundreds
    of OD)'
  type: boolean
  inputBinding:
    prefix: --max-density
- id: _bits_umber
  doc: '--bits          [n]umber: integer create LUT with n bit values (8..16, default:
    16)'
  type: boolean
  inputBinding:
    prefix: -b
- id: _entries_umber
  doc: '--entries       [n]umber: integer create LUT with n entries (1..65536, default:
    256)'
  type: boolean
  inputBinding:
    prefix: -e
- id: _firstmapped_umber
  doc: '--first-mapped  [n]umber: integer first input value mapped (-31768..65535,
    default: 0)'
  type: boolean
  inputBinding:
    prefix: -f
- id: _random_umber
  doc: '--random        [n]umber: unsigned integer perform n randomly selected permutations
    on the LUT'
  type: boolean
  inputBinding:
    prefix: -r
- id: random_seed
  doc: '[n]umber: unsigned integer initialize the random-number generator with n (default:
    0, for reproducible results)'
  type: boolean
  inputBinding:
    prefix: --random-seed
- id: _order_umber
  doc: '--order         [n]umber: integer use polynomial curve fitting algorithm with
    order n (0..99, default: 5)'
  type: boolean
  inputBinding:
    prefix: -o
- id: _explanation_string
  doc: '--explanation   [n]ame: string LUT explanation (default: automatically created)'
  type: boolean
  inputBinding:
    prefix: -E
- id: dcm_img_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmmklut
