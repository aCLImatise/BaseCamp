class: CommandLineTool
id: dcmmklut.cwl
inputs:
- id: dcm_img_out
  doc: DICOM output filename
  type: string
  inputBinding:
    position: 0
- id: q
  doc: --quiet         quiet mode, print no warnings and errors
  type: boolean
  inputBinding:
    prefix: -q
- id: v
  doc: --verbose       verbose mode, print processing details
  type: boolean
  inputBinding:
    prefix: -v
- id: d
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
- id: b
  doc: '--bits          [n]umber: integer create LUT with n bit values (8..16, default:
    16)'
  type: boolean
  inputBinding:
    prefix: -b
- id: e
  doc: '--entries       [n]umber: integer create LUT with n entries (1..65536, default:
    256)'
  type: boolean
  inputBinding:
    prefix: -e
- id: f
  doc: '--first-mapped  [n]umber: integer first input value mapped (-31768..65535,
    default: 0)'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
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
- id: o
  doc: '--order         [n]umber: integer use polynomial curve fitting algorithm with
    order n (0..99, default: 5)'
  type: boolean
  inputBinding:
    prefix: -o
- id: e
  doc: '--explanation   [n]ame: string LUT explanation (default: automatically created)'
  type: boolean
  inputBinding:
    prefix: -E
outputs: []
cwlVersion: v1.1
baseCommand:
- dcmmklut
