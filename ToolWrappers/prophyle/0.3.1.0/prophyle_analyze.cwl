class: CommandLineTool
id: prophyle_analyze.cwl
inputs:
- id: in_statistics_use_computation
  doc: "['w', 'u', 'wl', 'ul']\nstatistics to use for the computation of\nhistograms:\
    \ w (default) => weighted assignments; u\n=> unique assignments, non-weighted;\
    \ wl => weighted\nassignments, propagated to leaves; ul => unique\nassignments,\
    \ propagated to leaves."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_input_format_assignments
  doc: "['sam', 'bam', 'cram', 'uncompressed_bam', 'kraken', 'histo']\nInput format\
    \ of assignments [auto]"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_advanced_configuration_dictionary
  doc: '[STR [STR ...]]       advanced configuration (a JSON dictionary)'
  type: boolean?
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- prophyle
- analyze
