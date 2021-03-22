class: CommandLineTool
id: GNUVID_Predict.py.cwl
inputs:
- id: in_output_folder
  doc: "Output folder and prefix to be created for results\n(default: timestamped\
    \ GNUVID_results in the current\ndirectory)"
  type: Directory?
  inputBinding:
    prefix: --output_folder
- id: in_min_len
  doc: 'minimum sequence length [Default: 15000]'
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_n_max
  doc: "maximum proportion of ambiguity (Ns) allowed [Default:\n0.5]"
  type: double?
  inputBinding:
    prefix: --n_max
- id: in_block_pred
  doc: "prediction block size, good for limited memory\n[Default: 1000]"
  type: long?
  inputBinding:
    prefix: --block_pred
- id: in_exact_matching
  doc: "turn off exact matching (no allele will be identified\nfor each ORF) and only\
    \ use machine learning prediction\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --exact_matching
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
  dockerPull: quay.io/biocontainers/gnuvid:2.2--0
cwlVersion: v1.1
baseCommand:
- GNUVID_Predict.py
