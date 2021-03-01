class: CommandLineTool
id: msstitch_splitperco.cwl
inputs:
- id: in_input_file_format
  doc: Input file of {} format
  type: File?
  inputBinding:
    prefix: -i
- id: in_directory_to_output
  doc: Directory to output in
  type: Directory?
  inputBinding:
    prefix: -d
- id: in_prot_headers
  doc: "Specify protein FASTA headers to split on. Multiple\nheaders of the same split-type\
    \ can be grouped with\nsemicolons. E.g. --protheaders 'ENSP;sp\nPSEUDOGEN;ncRNA'\
    \ would split into ENSP/swissprot\npeptides and pseudogenes/non-coding RNA peptides.\n"
  type: string[]
  inputBinding:
    prefix: --protheaders
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_to_output
  doc: Directory to output in
  type: Directory?
  outputBinding:
    glob: $(inputs.in_directory_to_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.5--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- splitperco
