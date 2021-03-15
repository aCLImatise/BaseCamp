class: CommandLineTool
id: aln2basecnt.cwl
inputs:
- id: in_base_cnt
  doc: bases count table output file
  type: File?
  inputBinding:
    prefix: --basecnt
- id: in_coverage
  doc: coverage table output file
  type: File?
  inputBinding:
    prefix: --coverage
- id: in_name
  doc: "Patient/sample identifiers to use in coverage column\ntitle instead of 'coverage'"
  type: string?
  inputBinding:
    prefix: --name
- id: in_alphabet
  doc: alphabet to use
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_jsonini__stats
  doc: "/JSON/INI, --stats YAML/JSON/INI\nfile to write stats to"
  type: File?
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_base_cnt
  doc: bases count table output file
  type: File?
  outputBinding:
    glob: $(inputs.in_base_cnt)
- id: out_coverage
  doc: coverage table output file
  type: File?
  outputBinding:
    glob: $(inputs.in_coverage)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0
cwlVersion: v1.1
baseCommand:
- aln2basecnt
