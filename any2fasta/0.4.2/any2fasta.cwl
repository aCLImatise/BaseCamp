class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/any2fasta.cwl
inputs:
- id: print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: output_running_errors
  doc: No output while running, only errors
  type: boolean
  inputBinding:
    prefix: -q
- id: replace_ambiguous_letters
  doc: Replace ambiguous IUPAC letters with 'N'
  type: boolean
  inputBinding:
    prefix: -n
- id: lowercase_the_sequence
  doc: Lowercase the sequence
  type: boolean
  inputBinding:
    prefix: -l
- id: uppercase_the_sequence
  doc: Uppercase the sequence
  type: boolean
  inputBinding:
    prefix: -u
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
- id: more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
outputs: []
cwlVersion: v1.1
baseCommand:
- any2fasta
