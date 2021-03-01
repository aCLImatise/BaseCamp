class: CommandLineTool
id: VIBRANT_run.py.cwl
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
- id: in_folder
  doc: "path to deposit output folder and temporary files, will\ncreate if doesn't\
    \ exist [default= working directory]"
  type: File?
  inputBinding:
    prefix: -folder
- id: in_number_parallel_vibrant
  doc: "number of parallel VIBRANT runs, each occupies 1 CPU\n[default=1, max of 1\
    \ CPU per scaffold]"
  type: long?
  inputBinding:
    prefix: -t
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
- id: in_no_plot
  doc: suppress the generation of summary plots [default=off]
  type: boolean?
  inputBinding:
    prefix: -no_plot
- id: in_path_original_hmmfiles
  doc: "path to original \"databases\" directory that contains .HMM\nfiles (if moved\
    \ from default location)"
  type: File?
  inputBinding:
    prefix: -d
- id: in_path_original_tsv
  doc: "path to original \"files\" directory that contains .tsv and\nmodel files (if\
    \ moved from default location)\n"
  type: File?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_folder
  doc: "path to deposit output folder and temporary files, will\ncreate if doesn't\
    \ exist [default= working directory]"
  type: File?
  outputBinding:
    glob: $(inputs.in_folder)
hints: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_run.py
