class: CommandLineTool
id: cactus_halGenerator.cwl
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
- id: in_secondary_disk
  doc: ': The location of secondary disk'
  type: boolean?
  inputBinding:
    prefix: --secondaryDisk
- id: in_reference_event_string
  doc: ': String identifying the reference event.'
  type: boolean?
  inputBinding:
    prefix: --referenceEventString
- id: in_output_file
  doc: ': File to put final output in.'
  type: File?
  inputBinding:
    prefix: --outputFile
- id: in_show_only_substitutions_with_respect_to_reference
  doc: ': Put stars in place of characters that are identical to the reference.'
  type: boolean?
  inputBinding:
    prefix: --showOnlySubstitutionsWithRespectToReference
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
- cactus_halGenerator
