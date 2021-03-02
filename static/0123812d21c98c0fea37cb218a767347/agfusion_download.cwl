class: CommandLineTool
id: agfusion_download.cwl
inputs:
- id: in_dir
  doc: "(Optional) Directory to the database will be\ndownloaded to (defaults to current\
    \ working directory)."
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_genome
  doc: "Specify the genome shortcut (e.g. hg19). To see\nallavailable shortcuts run\
    \ 'agfusion download -a'.\nEither specify this or --species and --release."
  type: long?
  inputBinding:
    prefix: --genome
- id: in_species
  doc: The species (e.g. homo_sapiens).
  type: string?
  inputBinding:
    prefix: --species
- id: in_release
  doc: The ensembl release (e.g. 87).
  type: long?
  inputBinding:
    prefix: --release
- id: in_available
  doc: List available species and ensembl releases.
  type: boolean?
  inputBinding:
    prefix: --available
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- agfusion
- download
