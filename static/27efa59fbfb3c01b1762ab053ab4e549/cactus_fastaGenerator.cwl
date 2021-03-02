class: CommandLineTool
id: cactus_fastaGenerator.cwl
inputs:
- id: in_loglevel
  doc: ': Set the log level'
  type: boolean?
  inputBinding:
    prefix: --logLevel
- id: in_cactus_disk
  doc: ': The location of the flower disk directory'
  type: boolean?
  inputBinding:
    prefix: --cactusDisk
- id: in_reference_event_string
  doc: ': String identifying the reference event.'
  type: boolean?
  inputBinding:
    prefix: --referenceEventString
- id: in_flower_name
  doc: ': Name of flower to print string for.'
  type: boolean?
  inputBinding:
    prefix: --flowerName
- id: in_output_file
  doc: ': File to put final output in.'
  type: File?
  inputBinding:
    prefix: --outputFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: ': File to put final output in.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- cactus_fastaGenerator
