class: CommandLineTool
id: SNP_analysis.pl.cwl
inputs:
- id: in_gff
  doc: GFF is an alternative to genbank. Use either one.
  type: File?
  inputBinding:
    prefix: -gff
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- SNP_analysis.pl
