class: CommandLineTool
id: proteins_not_in_library.py.cwl
inputs:
- id: in_a_fasta_file
  doc: A fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_csv_file_proteinname
  doc: A csv file with the column ProteinName
  type: File?
  inputBinding:
    prefix: --in
- id: in_csv_output_file
  doc: "A csv output file containing all proteins not in the\ncsv file\n"
  type: File?
  inputBinding:
    prefix: --out
- id: in_var_3
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_it
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_script
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_8
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_search
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_display
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 3
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_which
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_column
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_proteins
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_then
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_named
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_were
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_protein_name
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_not
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_var_24
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_all
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_present
  doc: ''
  type: string
  inputBinding:
    position: 8
- id: in_extra
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_var_28
  doc: ''
  type: string
  inputBinding:
    position: 9
- id: in_var_29
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_csv
  doc: ''
  type: string
  inputBinding:
    position: 10
- id: in_entries
  doc: ''
  type: string
  inputBinding:
    position: 10
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_csv_output_file
  doc: "A csv output file containing all proteins not in the\ncsv file\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_csv_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- proteins_not_in_library.py
