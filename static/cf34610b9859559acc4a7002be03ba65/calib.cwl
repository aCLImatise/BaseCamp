class: CommandLineTool
id: calib.cwl
inputs:
- id: f
  doc: '--input-forward                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: '--input-reverse                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -r
- id: o
  doc: '--output-prefix                   (type: string;   REQUIRED paramter)'
  type: boolean
  inputBinding:
    prefix: -o
- id: s
  doc: '--silent                          (type: no value; default: unset)'
  type: boolean
  inputBinding:
    prefix: -s
- id: q
  doc: '--no-sort                         (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -q
- id: g
  doc: '--gzip-input                      (type: no value; default:  unset)'
  type: boolean
  inputBinding:
    prefix: -g
- id: l
  doc: '--barcode-length                  (type: int;      REQUIRED paramter unless
    -l1 and -l2 are provided)'
  type: boolean
  inputBinding:
    prefix: -l
- id: l1
  doc: '--barcode-length-1                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l1
- id: l2
  doc: '--barcode-length-2                (type: int;      REQUIRED paramter unless
    -l is provided)'
  type: boolean
  inputBinding:
    prefix: -l2
- id: p
  doc: '--ignored-sequence-prefix-length  (type: int;      default: 0)'
  type: boolean
  inputBinding:
    prefix: -p
- id: m
  doc: '--minimizer-count                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -m
- id: k
  doc: '--kmer-size                       (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -k
- id: e
  doc: '--error-tolerance                 (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -e
- id: t
  doc: '--minimizer-threshold             (type: int;      default: Depends on observed
    read length;)'
  type: boolean
  inputBinding:
    prefix: -t
- id: c
  doc: '--threads                         (type: int;      default: 1)'
  type: boolean
  inputBinding:
    prefix: -c
outputs: []
cwlVersion: v1.1
baseCommand:
- calib
