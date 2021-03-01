class: CommandLineTool
id: card_trick_search.cwl
inputs:
- id: in_input
  doc: "Input term to search in CARD ontology. Provide a\nunique term o several using\
    \ --batch option"
  type: string?
  inputBinding:
    prefix: --input
- id: in_format_output
  doc: Output format. stdout, csv, tsv or json
  type: string?
  inputBinding:
    prefix: --format_output
- id: in_output_name
  doc: Output name.
  type: string?
  inputBinding:
    prefix: --output_name
- id: in_path
  doc: Path containing CARD ontology. Default is user’s home
  type: File?
  inputBinding:
    prefix: --path
- id: in_batch
  doc: "Provide this option if input is a file containing\nmultiple terms, one per\
    \ line."
  type: boolean?
  inputBinding:
    prefix: --batch
- id: in_input_two
  doc: "Input term to search in results retrieved from first\ninput. Provide a unique\
    \ term o several using --batch\noption"
  type: long?
  inputBinding:
    prefix: --input_2
- id: in_term_two
  doc: "The type of term provided to search for the second\ninput. Default: any"
  type: string?
  inputBinding:
    prefix: --term_2
- id: in_batch_two
  doc: "Provide this option if input_2 is a file containing\nmultiple terms, one per\
    \ line."
  type: boolean?
  inputBinding:
    prefix: --batch_2
- id: in_quiet
  doc: Do not print process information
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_directory_dot
  doc: -t {ARO,gene,antibiotic,target,any}, --term {ARO,gene,antibiotic,target,any}
  type: Directory
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- card-trick
- search
