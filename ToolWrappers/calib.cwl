class: CommandLineTool
id: calib.cwl
inputs:
- id: in__inputforward_type
  doc: '--input-forward                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__inputreverse_type
  doc: '--input-reverse                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in__outputprefix_string
  doc: '--output-prefix                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__silent_type
  doc: '--silent                          (type: no value; default: unset)'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__nosort_type
  doc: '--no-sort                         (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -q
- id: in__gzipinput_type
  doc: '--gzip-input                      (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__barcodelength_int
  doc: '--barcode-length                  (type: int;      REQUIRED paramter unless
    -l1 and -l2 are provided)'
  type: boolean
  inputBinding:
    prefix: -l
- id: in_lone
  doc: '--barcode-length-1                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l1
- id: in_l_two
  doc: '--barcode-length-2                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l2
- id: in__ignoredsequenceprefixlength_type
  doc: '--ignored-sequence-prefix-length  (type: int;      default: 0)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__minimizercount_type
  doc: '--minimizer-count                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__kmersize_type
  doc: '--kmer-size                       (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -k
- id: in__errortolerance_type
  doc: '--error-tolerance                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -e
- id: in__minimizerthreshold_type
  doc: '--minimizer-threshold             (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in__threads_type
  doc: '--threads                         (type: int;      default: 1)'
  type: boolean
  inputBinding:
    prefix: -c
- id: in_parameter
  doc: ''
  type: string
  inputBinding:
    prefix: --PARAMETER
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- calib
