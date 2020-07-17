class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/calib.cwl
inputs:
- id: _inputforward_type
  doc: '--input-forward                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -f
- id: _inputreverse_string
  doc: '--input-reverse                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -r
- id: _outputprefix_string
  doc: '--output-prefix                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -o
- id: _silent_type
  doc: '--silent                          (type: no value; default: unset)'
  type: boolean
  inputBinding:
    prefix: -s
- id: _nosort_type
  doc: '--no-sort                         (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -q
- id: _gzipinput_type
  doc: '--gzip-input                      (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -g
- id: _barcodelength_type
  doc: '--barcode-length                  (type: int;      REQUIRED paramter unless
    -l1 and -l2 are provided)'
  type: boolean
  inputBinding:
    prefix: -l
- id: lone
  doc: '--barcode-length-1                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l1
- id: l_two
  doc: '--barcode-length-2                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l2
- id: _ignoredsequenceprefixlength_type
  doc: '--ignored-sequence-prefix-length  (type: int;      default: 0)'
  type: boolean
  inputBinding:
    prefix: -p
- id: _minimizercount_type
  doc: '--minimizer-count                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -m
- id: _kmersize_type
  doc: '--kmer-size                       (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -k
- id: _errortolerance_type
  doc: '--error-tolerance                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -e
- id: _minimizerthreshold_type
  doc: '--minimizer-threshold             (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -t
- id: _threads_type
  doc: '--threads                         (type: int;      default: 1)'
  type: boolean
  inputBinding:
    prefix: -c
- id: parameter
  doc: ''
  type: string
  inputBinding:
    prefix: --PARAMETER
outputs: []
cwlVersion: v1.1
baseCommand:
- calib
