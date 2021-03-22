class: CommandLineTool
id: GNUVID_database_customizer.py.cwl
inputs:
- id: in_genbank_refseq
  doc: fna files from GenBank or RefSeq
  type: boolean?
  inputBinding:
    prefix: --GenBank_RefSeq
- id: in_pro_kk_a
  doc: fna files from prokka
  type: boolean?
  inputBinding:
    prefix: --prokka
- id: in_list_csv
  doc: "a file.csv of 3+ columns: file_name, old locustag, new\nlocustag and optionally\
    \ metadata"
  type: File?
  inputBinding:
    prefix: --list_csv
- id: in_individual_files
  doc: "individual modified files\n"
  type: boolean?
  inputBinding:
    prefix: --individual_files
- id: in_prefix_name
  doc: "prefix name for the output folder and the one\nconcatenated modified file"
  type: string
  inputBinding:
    position: 0
- id: in_directory_path
  doc: path to directory of fna, RAST txt or gff files
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gnuvid:2.2--0
cwlVersion: v1.1
baseCommand:
- GNUVID_database_customizer.py
