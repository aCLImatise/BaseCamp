class: CommandLineTool
id: datafunk_process_gisaid_sequence_data.cwl
inputs:
- id: in_gisaidjson__input
  doc: "OR GISAID.json, --input GISAID.fasta OR GISAID.json\nSequence data in FASTA/json\
    \ format"
  type: string?
  inputBinding:
    prefix: -i
- id: in_output_fast_a
  doc: "FASTA format file to write, print to stdout if\nunspecified"
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_exclude
  doc: "A file that contains (anywhere) EPI_ISL_###### IDs to\nexclude (can provide\
    \ many files, e.g. -e FILE1 -e\nFILE2 ...)"
  type: File?
  inputBinding:
    prefix: --exclude
- id: in_exclude_uk
  doc: "Removes all GISAID entries with containing England,\nIreland, Scotland or\
    \ Wales"
  type: boolean?
  inputBinding:
    prefix: --exclude-uk
- id: in_exclude_undated
  doc: Removes all GISAID entries with an incomplete date
  type: boolean?
  inputBinding:
    prefix: --exclude-undated
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/datafunk:0.0.8--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- datafunk
- process_gisaid_sequence_data
