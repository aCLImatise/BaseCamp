class: CommandLineTool
id: cactus_getReferenceSeq.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean
  inputBinding:
    prefix: --logLevel
- id: in_name
  doc: ": name of the reference sequence's event"
  type: boolean
  inputBinding:
    prefix: --name
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean
  inputBinding:
    prefix: --cactusDisk
- id: in_output_file
  doc: ': Name of output fasta file'
  type: File
  inputBinding:
    prefix: --outputFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ': Name of output fasta file'
  type: File
  outputBinding:
    glob: $(inputs.in_output_file)
cwlVersion: v1.1
baseCommand:
- cactus_getReferenceSeq
