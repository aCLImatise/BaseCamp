class: CommandLineTool
id: ../../../MotifRaptor_snpscan.cwl
inputs:
- id: indexed_genome_db
  doc: indexed genome_database_folder
  type: string
  inputBinding:
    prefix: --indexed_genome_db
- id: pfm_folder
  doc: motif pmf files folder
  type: string
  inputBinding:
    prefix: --pfm_folder
- id: motifscan_output
  doc: Motif Scan Ouput Folder
  type: string
  inputBinding:
    prefix: --motifscan_output
- id: threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpscan
