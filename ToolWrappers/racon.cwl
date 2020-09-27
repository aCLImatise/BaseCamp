class: CommandLineTool
id: racon.cwl
inputs:
- id: in_include_unpolished
  doc: output unpolished target sequences
  type: boolean
  inputBinding:
    prefix: --include-unpolished
- id: in_fragment_correction
  doc: "perform fragment correction instead of contig polishing\n(overlaps file should\
    \ contain dual/self overlaps!)"
  type: boolean
  inputBinding:
    prefix: --fragment-correction
- id: in_window_length
  doc: "default: 500\nsize of window on which POA is performed"
  type: long
  inputBinding:
    prefix: --window-length
- id: in_quality_threshold
  doc: "default: 10.0\nthreshold for average base quality of windows used in POA"
  type: double
  inputBinding:
    prefix: --quality-threshold
- id: in_error_threshold
  doc: "default: 0.3\nmaximum allowed error rate used for filtering overlaps"
  type: double
  inputBinding:
    prefix: --error-threshold
- id: in_no_trimming
  doc: disables consensus trimming at window ends
  type: boolean
  inputBinding:
    prefix: --no-trimming
- id: in_match
  doc: "default: 3\nscore for matching bases"
  type: long
  inputBinding:
    prefix: --match
- id: in_mismatch
  doc: "default: -5\nscore for mismatching bases"
  type: long
  inputBinding:
    prefix: --mismatch
- id: in_gap
  doc: "default: -4\ngap penalty (must be negative)"
  type: long
  inputBinding:
    prefix: --gap
- id: in_threads
  doc: "default: 1\nnumber of threads"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- racon
