class: CommandLineTool
id: fastadigeststats.py.cwl
inputs:
- id: in_threads_to_run
  doc: Threads to run
  type: string?
  inputBinding:
    prefix: -p
- id: in_fasta_file_operate
  doc: "[FASTA], --fasta [FASTA]\nThe fasta file to operate on."
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  inputBinding:
    prefix: -o
- id: in_enzyme
  doc: "[{trypsin,lysc,none,argc,gluc,aspn,V8} ...]\nEnzyme to use. Pass a list like\
    \ \"trypsin lysc\" to use\nmultiple enzymes. The order of enzymes will be the\n\
    order of digestion if digesting in series."
  type: string?
  inputBinding:
    prefix: --enzyme
- id: in_enzyme_pattern
  doc: "A regex cleavage pattern such as [KR]|{P} to cleave\nproteins with."
  type: string?
  inputBinding:
    prefix: --enzyme-pattern
- id: in_min
  doc: Minimum cleavage length
  type: long?
  inputBinding:
    prefix: --min
- id: in_max
  doc: Maximum cleavage length
  type: long?
  inputBinding:
    prefix: --max
- id: in_parallel
  doc: "Should cleavages be done in parallel (default is\nserial digestion)?\n"
  type: boolean?
  inputBinding:
    prefix: --parallel
- id: in_fast_a
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_out
  doc: ''
  type: string?
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_file_write_results
  doc: "[OUT], --out [OUT]\nThe file to write results to. Leave blank for stdout,"
  type: File?
  outputBinding:
    glob: $(inputs.in_file_write_results)
hints: []
cwlVersion: v1.1
baseCommand:
- fastadigeststats.py
