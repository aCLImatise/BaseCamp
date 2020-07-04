class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/VIBRANT_annotation.py.cwl
inputs:
- id: input_fasta_file
  doc: input fasta file
  type: string
  inputBinding:
    prefix: -i
- id: format_of_input
  doc: format of input [default="nucl"]
  type: string
  inputBinding:
    prefix: -f
- id: length_limit_sequences
  doc: length in basepairs to limit input sequences [default=1000, can increase but
    not decrease]
  type: string
  inputBinding:
    prefix: -l
- id: number_limit_sequences
  doc: number of ORFs per scaffold to limit input sequences [default=4, can increase
    but not decrease]
  type: string
  inputBinding:
    prefix: -o
- id: vi_rome
  doc: use this setting if dataset is known to be comprised mainly of viruses. More
    sensitive to viruses, less sensitive to false identifications [default=off]
  type: boolean
  inputBinding:
    prefix: -virome
- id: path_directory_hmm
  doc: path to "databases" directory that contains .HMM files (if moved from default
    location)
  type: string
  inputBinding:
    prefix: -d
- id: path_tsv_files
  doc: path to "files" directory that contains .tsv and model files (if moved from
    default location)
  type: string
  inputBinding:
    prefix: -m
- id: outfolder
  doc: out_folder
  type: string
  inputBinding:
    prefix: -x
- id: base
  doc: base
  type: string
  inputBinding:
    prefix: -y
outputs: []
cwlVersion: v1.1
baseCommand:
- VIBRANT_annotation.py
