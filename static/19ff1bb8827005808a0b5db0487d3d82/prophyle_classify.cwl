class: CommandLineTool
id: prophyle_classify.cwl
inputs:
- id: in_kmer_length
  doc: k-mer length [detect automatically from the index]
  type: long
  inputBinding:
    prefix: -k
- id: in_measure_hhit_countcnormcoverage
  doc: "measure: h1=hit count, c1=coverage, h2=norm.hit count,\nc2=norm.coverage [h1]"
  type: string
  inputBinding:
    prefix: -m
- id: in_output_format
  doc: output format [sam]
  type: string
  inputBinding:
    prefix: -f
- id: in_log_file
  doc: log file
  type: File
  inputBinding:
    prefix: -l
- id: in_incorporate_sequences_qualities
  doc: incorporate sequences and qualities into SAM records
  type: boolean
  inputBinding:
    prefix: -P
- id: in_annotate_assignments_using
  doc: annotate assignments (using tax. information from NHX)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_replace_read_assignments
  doc: replace read assignments by their LCA
  type: boolean
  inputBinding:
    prefix: -L
- id: in_replace_kmer_matches
  doc: replace k-mer matches by their LCA
  type: boolean
  inputBinding:
    prefix: -X
- id: in_mimic_kraken_equivalent
  doc: mimic Kraken (equivalent to "-m h1 -f kraken -L -X")
  type: boolean
  inputBinding:
    prefix: -M
- id: in_use_c_impl
  doc: use C++ impl. of the assignment algorithm (experimental)
  type: boolean
  inputBinding:
    prefix: -C
- id: in_force_restarted_mode
  doc: force restarted search mode
  type: boolean
  inputBinding:
    prefix: -K
- id: in_advanced_configuration_json
  doc: '[STR [STR ...]]  advanced configuration (a JSON dictionary)'
  type: boolean
  inputBinding:
    prefix: -c
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- prophyle
- classify
