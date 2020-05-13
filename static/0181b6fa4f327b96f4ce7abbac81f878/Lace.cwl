class: CommandLineTool
id: Lace.py.cwl
inputs:
- id: genome_file
  doc: The name of the fasta file containing all transcripts
  type: string
  inputBinding:
    position: 0
- id: cluster_file
  doc: The name of the text file with the transcript to cluster mapping
  type: string
  inputBinding:
    position: 1
- id: cores
  doc: The number of cores you wish to run the job on (default = 1)
  type: string
  inputBinding:
    prefix: --cores
- id: alternate
  doc: Create alternate annotations and create metrics on success of SuperTranscript
    Building
  type: boolean
  inputBinding:
    prefix: --alternate
- id: tidy
  doc: 'Move intermediate fasta files into folder: SuperFiles after running'
  type: boolean
  inputBinding:
    prefix: --tidy
- id: max_tran
  doc: Set a maximum for the number of transcripts from a cluster to be included for
    building the SuperTranscript (default=50).
  type: long
  inputBinding:
    prefix: --maxTran
- id: output_dir
  doc: Output Directory
  type: string
  inputBinding:
    prefix: --outputDir
outputs: []
cwlVersion: v1.1
baseCommand:
- Lace.py
