class: CommandLineTool
id: agfusion_download.cwl
inputs:
- id: dir
  doc: (Optional) Directory to the database will be downloaded to (defaults to current
    working directory).
  type: string
  inputBinding:
    prefix: --dir
- id: genome
  doc: Specify the genome shortcut (e.g. hg19). To see allavailable shortcuts run
    'agfusion download -a'. Either specify this or --species and --release.
  type: string
  inputBinding:
    prefix: --genome
- id: species
  doc: The species (e.g. homo_sapiens).
  type: string
  inputBinding:
    prefix: --species
- id: release
  doc: The ensembl release (e.g. 87).
  type: string
  inputBinding:
    prefix: --release
- id: available
  doc: List available species and ensembl releases.
  type: boolean
  inputBinding:
    prefix: --available
outputs: []
cwlVersion: v1.1
baseCommand:
- agfusion
- download
