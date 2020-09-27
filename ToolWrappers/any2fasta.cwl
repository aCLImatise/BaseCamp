class: CommandLineTool
id: any2fasta.cwl
inputs:
- id: in_print_version_exit
  doc: Print version and exit
  type: boolean
  inputBinding:
    prefix: -v
- id: in_output_running_errors
  doc: No output while running, only errors
  type: boolean
  inputBinding:
    prefix: -q
- id: in_replace_ambiguous_letters
  doc: Replace ambiguous IUPAC letters with 'N'
  type: boolean
  inputBinding:
    prefix: -n
- id: in_lowercase_the_sequence
  doc: Lowercase the sequence
  type: boolean
  inputBinding:
    prefix: -l
- id: in_uppercase_the_sequence
  doc: Uppercase the sequence
  type: boolean
  inputBinding:
    prefix: -u
- id: in_more_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -MORE_OPTIONS
- id: in_options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -OPTIONS
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- any2fasta
