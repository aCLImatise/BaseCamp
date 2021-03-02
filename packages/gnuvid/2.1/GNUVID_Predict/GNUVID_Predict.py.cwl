class: CommandLineTool
id: GNUVID_Predict.py.cwl
inputs:
- id: in_output_folder
  doc: "Output folder and prefix to be created for results\n(default: timestamped\
    \ GNUVID_results in the current\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_individual
  doc: "Individual Output file for each genome showing the\nallele sequence and GNU\
    \ score for each gene allele"
  type: File?
  inputBinding:
    prefix: --individual
- id: in_force
  doc: "Force overwriting existing results folder assigned\nwith -o (default: off)"
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_quiet
  doc: No screen output [default OFF]
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_v
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_query_fna
  doc: "Query Whole Genome Nucleotide FASTA file to analyze\n(.fna)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_folder
  doc: "Output folder and prefix to be created for results\n(default: timestamped\
    \ GNUVID_results in the current\ndirectory)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_folder)
- id: out_individual
  doc: "Individual Output file for each genome showing the\nallele sequence and GNU\
    \ score for each gene allele"
  type: File?
  outputBinding:
    glob: $(inputs.in_individual)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.1--0
cwlVersion: v1.1
baseCommand:
- GNUVID_Predict.py
