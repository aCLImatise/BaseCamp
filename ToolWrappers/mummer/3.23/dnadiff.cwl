class: CommandLineTool
id: dnadiff.cwl
inputs:
- id: in_delta_provide_precomputed
  doc: "|delta        Provide precomputed delta file for analysis\n-h\n--help    \
    \      Display help information and exit\n-p|prefix       Set the prefix of the\
    \ output files (default \"out\")\n-V\n--version       Display the version information\
    \ and exit\n"
  type: File
  inputBinding:
    prefix: -d
- id: in_dna_diff
  doc: '[options]  <reference>  <query>'
  type: string
  inputBinding:
    position: 0
- id: in_dnadiff_d_delta
  doc: dnadiff  [options]  -d <delta file>
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: Set the input reference multi-FASTA filename
  type: string
  inputBinding:
    position: 0
- id: in_query
  doc: Set the input query multi-FASTA filename
  type: string
  inputBinding:
    position: 1
- id: in_delta_file_unfiltered
  doc: delta file      Unfiltered .delta alignment file from nucmer
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_delta_provide_precomputed
  doc: "|delta        Provide precomputed delta file for analysis\n-h\n--help    \
    \      Display help information and exit\n-p|prefix       Set the prefix of the\
    \ output files (default \"out\")\n-V\n--version       Display the version information\
    \ and exit\n"
  type: File
  outputBinding:
    glob: $(inputs.in_delta_provide_precomputed)
cwlVersion: v1.1
baseCommand:
- dnadiff
