class: CommandLineTool
id: borf.cwl
inputs:
- id: in_output_path
  doc: "path to write output files. [OUTPUT_PATH].pep and\n[OUTPUT_PATH].txt (default:\
    \ input .fa file name)"
  type: File
  inputBinding:
    prefix: --output_path
- id: in_strand
  doc: Predict orfs for both strands
  type: boolean
  inputBinding:
    prefix: --strand
- id: in_all_orfs
  doc: Return all ORFs for each sequence longer than the
  type: boolean
  inputBinding:
    prefix: --all_orfs
- id: in_upstream_incomplete_length
  doc: "Minimum length (AA) of uninterupted sequence upstream\nof ORF to be included\
    \ for incomplete_5prime\ntranscripts (default: 50)"
  type: long
  inputBinding:
    prefix: --upstream_incomplete_length
- id: in_batch_size
  doc: Number of fasta records to read in in each batch
  type: long
  inputBinding:
    prefix: --batch_size
- id: in_force_overwrite
  doc: "Force overwriting of output files?\n"
  type: boolean
  inputBinding:
    prefix: --force_overwrite
- id: in_l
  doc: ''
  type: long
  inputBinding:
    prefix: -l
- id: in_cut_off
  doc: -l ORF_LENGTH, --orf_length ORF_LENGTH
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: "path to write output files. [OUTPUT_PATH].pep and\n[OUTPUT_PATH].txt (default:\
    \ input .fa file name)"
  type: File
  outputBinding:
    glob: $(inputs.in_output_path)
cwlVersion: v1.1
baseCommand:
- borf
