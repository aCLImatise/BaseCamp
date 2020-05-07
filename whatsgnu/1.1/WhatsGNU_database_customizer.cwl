class: CommandLineTool
id: WhatsGNU_database_customizer.py.cwl
inputs:
- id: prefix_name
  doc: prefix name for the output folder and the one concatenated modified file
  type: string
  inputBinding:
    position: 0
- id: directory_path
  doc: path to directory of faa, RAST txt or gff files
  type: Directory
  inputBinding:
    position: 1
- id: genbank_refseq
  doc: faa files from GenBank or RefSeq
  type: boolean
  inputBinding:
    prefix: --GenBank_RefSeq
- id: pro_kk_a
  doc: faa files from Prokka
  type: boolean
  inputBinding:
    prefix: --prokka
- id: rast
  doc: spreadsheet tab-separated text files from RAST
  type: boolean
  inputBinding:
    prefix: --RAST
- id: gff_file
  doc: gff file from prokka, needed if planning to run Roary
  type: boolean
  inputBinding:
    prefix: --gff_file
- id: gzipped
  doc: compressed file (.gz)
  type: boolean
  inputBinding:
    prefix: --gzipped
- id: list_csv
  doc: 'a file.csv of 3+ columns: file_name, old locustag, new locustag and optionally
    metadata'
  type: string
  inputBinding:
    prefix: --list_csv
- id: individual_files
  doc: individual modified files
  type: boolean
  inputBinding:
    prefix: --individual_files
- id: concatenated_file
  doc: one concatenated modified file of all input files
  type: boolean
  inputBinding:
    prefix: --concatenated_file
outputs: []
cwlVersion: v1.1
baseCommand:
- WhatsGNU_database_customizer.py
