class: CommandLineTool
id: dfast_file_downloader.py.cwl
inputs:
- id: in_protein
  doc: ": For DFAST reference libraries.\nFiles will be downloaded to DB root directory\
    \ by default.\nDB root can be specified with \"--dbroot\" option."
  type: boolean?
  inputBinding:
    prefix: --protein
- id: in_assembly_fast_a
  doc: ": For Reference genomes\nReference genome file will be downloaded from NCBI\
    \ Assembly Database either in GenBank or Fasta format.\nFiles will be written\
    \ to the current directory or the directory specified with \"--out\" option."
  type: File?
  inputBinding:
    prefix: --assembly_fasta
- id: in_no_indexing
  doc: Do not perform database indexing
  type: boolean?
  inputBinding:
    prefix: --no_indexing
- id: in_out
  doc: "Output directory (default: current directory.\nFor --assembly, --assembly_fasta.\
    \ Not allowed with argument --dbroot)"
  type: Directory?
  inputBinding:
    prefix: --out
- id: in_db_root
  doc: "DB root directory (default: APP_ROOT/db.\nFor --protein, --cdd, --hmm. Not\
    \ allowed with argument --out)\n"
  type: Directory?
  inputBinding:
    prefix: --dbroot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_assembly_fast_a
  doc: ": For Reference genomes\nReference genome file will be downloaded from NCBI\
    \ Assembly Database either in GenBank or Fasta format.\nFiles will be written\
    \ to the current directory or the directory specified with \"--out\" option."
  type: File?
  outputBinding:
    glob: $(inputs.in_assembly_fast_a)
- id: out_out
  doc: "Output directory (default: current directory.\nFor --assembly, --assembly_fasta.\
    \ Not allowed with argument --dbroot)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out)
- id: out_db_root
  doc: "DB root directory (default: APP_ROOT/db.\nFor --protein, --cdd, --hmm. Not\
    \ allowed with argument --out)\n"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_db_root)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/dfast:1.2.12--h8b12597_0
cwlVersion: v1.1
baseCommand:
- dfast_file_downloader.py
