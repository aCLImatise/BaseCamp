class: CommandLineTool
id: VIBRANT_annotation.py.cwl
inputs:
- id: in_input_fasta_file
  doc: input fasta file
  type: File?
  inputBinding:
    prefix: -i
- id: in_format_of_input
  doc: format of input [default="nucl"]
  type: string?
  inputBinding:
    prefix: -f
- id: in_length_limit_sequences
  doc: "length in basepairs to limit input sequences [default=1000,\ncan increase\
    \ but not decrease]"
  type: long?
  inputBinding:
    prefix: -l
- id: in_number_limit_sequences
  doc: "number of ORFs per scaffold to limit input sequences\n[default=4, can increase\
    \ but not decrease]"
  type: long?
  inputBinding:
    prefix: -o
- id: in_vi_rome
  doc: "use this setting if dataset is known to be comprised mainly\nof viruses. More\
    \ sensitive to viruses, less sensitive to\nfalse identifications [default=off]"
  type: boolean?
  inputBinding:
    prefix: -virome
- id: in_path_directory_hmm
  doc: "path to \"databases\" directory that contains .HMM files (if\nmoved from default\
    \ location)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_path_tsv_moved
  doc: "path to \"files\" directory that contains .tsv and model files\n(if moved\
    \ from default location)"
  type: File?
  inputBinding:
    prefix: -m
- id: in_outfolder
  doc: out_folder
  type: string?
  inputBinding:
    prefix: -x
- id: in_base
  doc: base
  type: string?
  inputBinding:
    prefix: -y
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_annotation.py
