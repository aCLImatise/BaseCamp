class: CommandLineTool
id: datafunk_process_gisaid_data.cwl
inputs:
- id: in_input_json
  doc: Gisaid json data
  type: string?
  inputBinding:
    prefix: --input-json
- id: in_input_metadata
  doc: previous metadata (can be 'False')
  type: string?
  inputBinding:
    prefix: --input-metadata
- id: in_output_fast_a
  doc: fasta format file to write.
  type: File?
  inputBinding:
    prefix: --output-fasta
- id: in_output_metadata
  doc: metadata file to write.
  type: File?
  inputBinding:
    prefix: --output-metadata
- id: in_exclude_file
  doc: "A file that contains (anywhere) EPI_ISL_###### IDs to\nexclude (can provide\
    \ many files, e.g. -e FILE1 -e\nFILE2 ...)"
  type: File?
  inputBinding:
    prefix: --exclude-file
- id: in_exclude_uk
  doc: "Excludes GISAID entries from England, Ireland,\nScotland or Wales from being\
    \ written to fasta (default\nis to include them)"
  type: boolean?
  inputBinding:
    prefix: --exclude-uk
- id: in_exclude_undated
  doc: "Excludes GISAID entries with an incomplete date from\nbeing written to fasta\
    \ (default is to include them)"
  type: boolean?
  inputBinding:
    prefix: --exclude-undated
- id: in_include_subsampled
  doc: "Write GISAID entries previously flagged as duplicated\nto fasta (default is\
    \ to exclude them)"
  type: boolean?
  inputBinding:
    prefix: --include-subsampled
- id: in_include_omitted_file
  doc: "Write GISAID entries excluded in --exclude-file FILE\nto fasta (default is\
    \ to exclude them)\n"
  type: boolean?
  inputBinding:
    prefix: --include-omitted-file
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
- process_gisaid_data
