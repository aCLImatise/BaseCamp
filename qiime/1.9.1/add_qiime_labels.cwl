class: CommandLineTool
id: add_qiime_labels.py.cwl
inputs:
- id: mapping_fp
  doc: SampleID to fasta file name mapping file filepath [REQUIRED]
  type: string
  inputBinding:
    prefix: --mapping_fp
- id: fast_a_dir
  doc: Directory of fasta files to combine and label. [REQUIRED]
  type: string
  inputBinding:
    prefix: --fasta_dir
- id: filename_column
  doc: Specify column used in metadata mapping file for fasta file names. [REQUIRED]
  type: File
  inputBinding:
    prefix: --filename_column
outputs: []
cwlVersion: v1.1
baseCommand:
- add_qiime_labels.py
