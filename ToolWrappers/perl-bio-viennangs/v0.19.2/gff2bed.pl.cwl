class: CommandLineTool
id: gff2bed.pl.cwl
inputs:
- id: in_gff
  doc: Input GFF file.
  type: boolean
  inputBinding:
    prefix: --gff
- id: in_feature
  doc: "Specify feature type (eg. CDS,tRNA,rRNA,SBS, etc) to be extracted\nfrom GFF3."
  type: boolean
  inputBinding:
    prefix: --feature
- id: in_out
  doc: Output path.
  type: File
  inputBinding:
    prefix: --out
- id: in_man
  doc: "Prints the manual page and exits\n"
  type: boolean
  inputBinding:
    prefix: --man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Output path.
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- gff2bed.pl
