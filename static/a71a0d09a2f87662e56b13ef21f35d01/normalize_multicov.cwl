class: CommandLineTool
id: normalize_multicov.pl.cwl
inputs:
- id: i
  doc: Input file in 'bedtools multicov' output format, i.e. an extended BED12 file
    where each colum past the 12th lists the read counts for one sample/condition.
  type: boolean
  inputBinding:
    prefix: -i
- id: read_length
  doc: Read length of the RNA-seq experiment.
  type: boolean
  inputBinding:
    prefix: --readlength
- id: out
  doc: Output folder.
  type: boolean
  inputBinding:
    prefix: --out
- id: type
  doc: Normalization method, either 'TPM' (default) or 'RPKM'.
  type: boolean
  inputBinding:
    prefix: --type
- id: man
  doc: Prints the manual page and exits
  type: boolean
  inputBinding:
    prefix: --man
outputs: []
cwlVersion: v1.1
baseCommand:
- normalize_multicov.pl
