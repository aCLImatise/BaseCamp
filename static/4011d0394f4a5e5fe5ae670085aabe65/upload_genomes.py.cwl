class: CommandLineTool
id: upload_genomes.py.cwl
inputs:
- id: in_external_genomes
  doc: "=    comma-separated list of label:nucleotide fasta file pairs of externally\
    \ supplied genomes.\nlabel:FILE,...     labels should be unique as genomes will\
    \ be identified by this label in further output files"
  type: File
  inputBinding:
    prefix: --external-genomes
- id: in_external_zip
  doc: destination path for archive of user provided external genomes containing formatted
    nucleotide fasta files
  type: File
  inputBinding:
    prefix: --external-zip
- id: in_select_taxa_do_tpy
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_external_genomes
  doc: "=    comma-separated list of label:nucleotide fasta file pairs of externally\
    \ supplied genomes.\nlabel:FILE,...     labels should be unique as genomes will\
    \ be identified by this label in further output files"
  type: File
  outputBinding:
    glob: $(inputs.in_external_genomes)
cwlVersion: v1.1
baseCommand:
- upload_genomes.py
