class: CommandLineTool
id: card_trick_search.cwl
inputs:
- id: input
  doc: Input term to search in CARD ontology. Provide a unique term o several using
    --batch option
  type: string
  inputBinding:
    prefix: --input
- id: format_output
  doc: Output format. stdout, csv, tsv or json
  type: string
  inputBinding:
    prefix: --format_output
- id: output_name
  doc: Output name.
  type: string
  inputBinding:
    prefix: --output_name
- id: path
  doc: Path containing CARD ontology. Default is user’s home directory.
  type: File
  inputBinding:
    prefix: --path
- id: term
  doc: The type of term provided to search.
  type: string
  inputBinding:
    prefix: --term
- id: batch
  doc: Provide this option if input is a file containing multiple terms, one per line.
  type: boolean
  inputBinding:
    prefix: --batch
- id: input_2
  doc: Input term to search in results retrieved from first input. Provide a unique
    term o several using --batch option
  type: string
  inputBinding:
    prefix: --input_2
- id: term_2
  doc: 'The type of term provided to search for the second input. Default: any'
  type: string
  inputBinding:
    prefix: --term_2
- id: batch_2
  doc: Provide this option if input_2 is a file containing multiple terms, one per
    line.
  type: boolean
  inputBinding:
    prefix: --batch_2
- id: quiet
  doc: Do not print process information
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- card-trick
- search
