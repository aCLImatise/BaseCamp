class: CommandLineTool
id: calib.cwl
inputs:
- id: in_input_forward
  doc: '(type: string;   REQUIRED paramter)'
  type: boolean?
  inputBinding:
    prefix: --input-forward
- id: in_input_reverse
  doc: '(type: string;   REQUIRED paramter)'
  type: boolean?
  inputBinding:
    prefix: --input-reverse
- id: in_output_prefix
  doc: '(type: string;   REQUIRED paramter)'
  type: boolean?
  inputBinding:
    prefix: --output-prefix
- id: in_silent
  doc: '(type: no value; default: unset)'
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_no_sort
  doc: '(type: no value; default:  unset)'
  type: boolean?
  inputBinding:
    prefix: --no-sort
- id: in_gzip_input
  doc: '(type: no value; default:  unset)'
  type: boolean?
  inputBinding:
    prefix: --gzip-input
- id: in_barcode_length
  doc: '(type: int;      REQUIRED paramter unless -l1 and -l2 are provided)'
  type: boolean?
  inputBinding:
    prefix: --barcode-length
- id: in_barcode_length_one
  doc: '(type: int;      REQUIRED paramter unless -l is provided)'
  type: boolean?
  inputBinding:
    prefix: --barcode-length-1
- id: in_barcode_length_two
  doc: '(type: int;      REQUIRED paramter unless -l is provided)'
  type: boolean?
  inputBinding:
    prefix: --barcode-length-2
- id: in_ignored_sequence_prefix_length
  doc: '(type: int;      default: 0)'
  type: boolean?
  inputBinding:
    prefix: --ignored-sequence-prefix-length
- id: in_minimizer_count
  doc: '(type: int;      default: Depends on observed read length;)'
  type: boolean?
  inputBinding:
    prefix: --minimizer-count
- id: in_km_er_size
  doc: '(type: int;      default: Depends on observed read length;)'
  type: boolean?
  inputBinding:
    prefix: --kmer-size
- id: in_error_tolerance
  doc: '(type: int;      default: Depends on observed read length;)'
  type: boolean?
  inputBinding:
    prefix: --error-tolerance
- id: in_minimizer_threshold
  doc: '(type: int;      default: Depends on observed read length;)'
  type: boolean?
  inputBinding:
    prefix: --minimizer-threshold
- id: in_threads
  doc: '(type: int;      default: 1)'
  type: boolean?
  inputBinding:
    prefix: --threads
- id: in_parameter
  doc: ''
  type: string?
  inputBinding:
    prefix: --PARAMETER
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- calib
