class: CommandLineTool
id: anvi_script_pfam_accessions_to_hmms_directory.cwl
inputs:
- id: in_pfam_accessions_list
  doc: "One or more PFAM accession IDs (such as PF14437.6). If\nyou have multiple\
    \ accessions, you can separate them\nfrom each other with a space. If you have\
    \ too many,\nconsider using the `--pfam-accessions-file` parameter\ninstead. (default:\
    \ None)"
  type: string[]
  inputBinding:
    prefix: --pfam-accessions-list
- id: in_pfam_accessions_file
  doc: "A single column text file where each column is a\nsingle PFAM accession ID\
    \ (such as PF14437.6). You may\nhave as many accession ids as you like in this\
    \ file.\n(default: None)"
  type: File?
  inputBinding:
    prefix: --pfam-accessions-file
- id: in_output_directory
  doc: "Output directory for the anvi'o-formatted HMMs. Choose\nthe name wisely as\
    \ this will be the name that will\nappear in the contigs database after you provide\
    \ it\nwith `-H` flag to `anvi-run-hmms`. We suggest you to\nuse a name that does\
    \ not include an of those millenial\ncharacters (like space, question mark, comma,\
    \ and\nsuch, you know). (default: None)"
  type: Directory?
  inputBinding:
    prefix: --output-directory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: "Output directory for the anvi'o-formatted HMMs. Choose\nthe name wisely as\
    \ this will be the name that will\nappear in the contigs database after you provide\
    \ it\nwith `-H` flag to `anvi-run-hmms`. We suggest you to\nuse a name that does\
    \ not include an of those millenial\ncharacters (like space, question mark, comma,\
    \ and\nsuch, you know). (default: None)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-pfam-accessions-to-hmms-directory
