class: CommandLineTool
id: bp_make_mrna_protein.pl.cwl
inputs:
- id: in_f_slash_frame
  doc: Translation Frame (0,1,2) are valid (defaults to '0')
  type: boolean
  inputBinding:
    prefix: -f/--frame
- id: in_t_slash_terminator
  doc: Stop Codon Character ('*' by default)
  type: boolean
  inputBinding:
    prefix: -t/--terminator
- id: in_us_lash_unknown
  doc: Unknown Protein character (defaults to 'X')
  type: boolean
  inputBinding:
    prefix: -u/--unknown
- id: in_ct_slash_codon_table
  doc: "Codon table to use (defaults to '1')\n(see Bio::PrimarySeq for more information)"
  type: boolean
  inputBinding:
    prefix: -ct/--codontable
- id: in_cds_slash_full_cds
  doc: Expected Full CDS (with start and Stop codon)
  type: boolean
  inputBinding:
    prefix: -cds/--fullcds
- id: in_throw_on_error
  doc: Throw an error if no Full CDS (defaults to 0)
  type: boolean
  inputBinding:
    prefix: -throwOnError
- id: in_if_slash_i_format
  doc: Input format (defaults to FASTA/Pearson)
  type: boolean
  inputBinding:
    prefix: -if/--iformat
- id: in_of_slash_o_format
  doc: Output format (defaults to FASTA/Pearson)
  type: boolean
  inputBinding:
    prefix: -of/--oformat
- id: in_oslash_output
  doc: Output Filename (defaults to STDOUT)
  type: File
  inputBinding:
    prefix: -o/--output
- id: in_i_slash_input
  doc: Input Filename (defaults to STDIN)
  type: boolean
  inputBinding:
    prefix: -i/--input
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_oslash_output
  doc: Output Filename (defaults to STDOUT)
  type: File
  outputBinding:
    glob: $(inputs.in_oslash_output)
cwlVersion: v1.1
baseCommand:
- bp_make_mrna_protein.pl
