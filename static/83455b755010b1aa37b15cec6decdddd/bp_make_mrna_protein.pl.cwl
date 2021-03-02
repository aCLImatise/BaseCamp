class: CommandLineTool
id: bp_make_mrna_protein.pl.cwl
inputs:
- id: in_frame
  doc: Translation Frame (0,1,2) are valid (defaults to '0')
  type: boolean?
  inputBinding:
    prefix: --frame
- id: in_terminator
  doc: Stop Codon Character ('*' by default)
  type: boolean?
  inputBinding:
    prefix: --terminator
- id: in_unknown
  doc: Unknown Protein character (defaults to 'X')
  type: boolean?
  inputBinding:
    prefix: --unknown
- id: in_codon_table
  doc: "Codon table to use (defaults to '1')\n(see Bio::PrimarySeq for more information)"
  type: boolean?
  inputBinding:
    prefix: --codontable
- id: in_full_cds
  doc: Expected Full CDS (with start and Stop codon)
  type: boolean?
  inputBinding:
    prefix: --fullcds
- id: in_throw_on_error
  doc: Throw an error if no Full CDS (defaults to 0)
  type: boolean?
  inputBinding:
    prefix: -throwOnError
- id: in_i_format
  doc: Input format (defaults to FASTA/Pearson)
  type: boolean?
  inputBinding:
    prefix: --iformat
- id: in_o_format
  doc: Output format (defaults to FASTA/Pearson)
  type: boolean?
  inputBinding:
    prefix: --oformat
- id: in_output
  doc: Output Filename (defaults to STDOUT)
  type: File?
  inputBinding:
    prefix: --output
- id: in_input
  doc: Input Filename (defaults to STDIN)
  type: boolean?
  inputBinding:
    prefix: --input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output Filename (defaults to STDOUT)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- bp_make_mrna_protein.pl
