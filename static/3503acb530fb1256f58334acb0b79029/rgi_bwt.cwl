class: CommandLineTool
id: rgi_bwt.cwl
inputs:
- id: in_read_one
  doc: raw read one (qc and trimmied)
  type: string?
  inputBinding:
    prefix: --read_one
- id: in_read_two
  doc: raw read two (qc and trimmied)
  type: string?
  inputBinding:
    prefix: --read_two
- id: in_output_file
  doc: name of output filename(s)
  type: File?
  inputBinding:
    prefix: --output_file
- id: in_debug
  doc: debug mode
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_clean
  doc: removes temporary files
  type: boolean?
  inputBinding:
    prefix: --clean
- id: in_local
  doc: "use local database (default: uses database in\nexecutable directory)"
  type: boolean?
  inputBinding:
    prefix: --local
- id: in_include_wildcard
  doc: include wildcard
  type: boolean?
  inputBinding:
    prefix: --include_wildcard
- id: in_include_baits
  doc: include baits
  type: boolean?
  inputBinding:
    prefix: --include_baits
- id: in_mapq
  doc: filter reads based on MAPQ score
  type: string?
  inputBinding:
    prefix: --mapq
- id: in_mapped
  doc: filter reads based on mapped reads
  type: string?
  inputBinding:
    prefix: --mapped
- id: in_coverage
  doc: filter reads based on coverage of reference sequence
  type: string?
  inputBinding:
    prefix: --coverage
- id: in_a
  doc: ''
  type: string?
  inputBinding:
    prefix: -a
- id: in_aligner
  doc: -n THREADS, --threads THREADS
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: name of output filename(s)
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- rgi
- bwt
