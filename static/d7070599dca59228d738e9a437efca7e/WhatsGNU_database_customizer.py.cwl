class: CommandLineTool
id: WhatsGNU_database_customizer.py.cwl
inputs:
- id: in_genbank_refseq
  doc: faa files from GenBank or RefSeq
  type: boolean
  inputBinding:
    prefix: --GenBank_RefSeq
- id: in_pro_kk_a
  doc: faa files from Prokka
  type: boolean
  inputBinding:
    prefix: --prokka
- id: in_rast
  doc: spreadsheet tab-separated text files from RAST
  type: boolean
  inputBinding:
    prefix: --RAST
- id: in_gff_file
  doc: gff file from prokka, needed if planning to run Roary
  type: boolean
  inputBinding:
    prefix: --gff_file
- id: in_gzipped
  doc: compressed file (.gz)
  type: boolean
  inputBinding:
    prefix: --gzipped
- id: in_list_csv
  doc: "a file.csv of 3+ columns: file_name, old locustag, new\nlocustag and optionally\
    \ metadata"
  type: File
  inputBinding:
    prefix: --list_csv
- id: in_individual_files
  doc: individual modified files
  type: boolean
  inputBinding:
    prefix: --individual_files
- id: in_concatenated_file
  doc: "one concatenated modified file of all input files\n"
  type: boolean
  inputBinding:
    prefix: --concatenated_file
- id: in_prefix_name
  doc: "prefix name for the output folder and the one\nconcatenated modified file"
  type: string
  inputBinding:
    position: 0
- id: in_directory_path
  doc: path to directory of faa, RAST txt or gff files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- WhatsGNU_database_customizer.py
