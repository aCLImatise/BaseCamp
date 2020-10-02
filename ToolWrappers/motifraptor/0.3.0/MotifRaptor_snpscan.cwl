class: CommandLineTool
id: MotifRaptor_snpscan.cwl
inputs:
- id: in_indexed_genome_db
  doc: indexed genome_database_folder
  type: string
  inputBinding:
    prefix: --indexed_genome_db
- id: in_pfm_folder
  doc: motif pmf files folder
  type: Directory
  inputBinding:
    prefix: --pfm_folder
- id: in_motifscan_output
  doc: Motif Scan Ouput Folder
  type: Directory
  inputBinding:
    prefix: --motifscan_output
- id: in_threads
  doc: "number of threads\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpscan
