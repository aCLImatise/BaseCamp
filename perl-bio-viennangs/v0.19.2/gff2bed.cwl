class: CommandLineTool
id: gff2bed.pl.cwl
inputs:
- id: gff
  doc: Input GFF file.
  type: boolean
  inputBinding:
    prefix: --gff
- id: feature
  doc: Specify feature type (eg. CDS,tRNA,rRNA,SBS, etc) to be extracted from GFF3.
  type: boolean
  inputBinding:
    prefix: --feature
- id: out
  doc: Output path.
  type: boolean
  inputBinding:
    prefix: --out
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- gff2bed.pl
