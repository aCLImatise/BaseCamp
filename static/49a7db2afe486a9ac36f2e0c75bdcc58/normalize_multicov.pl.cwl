class: CommandLineTool
id: normalize_multicov.pl.cwl
inputs:
- id: in_input_file_ie
  doc: "Input file in 'bedtools multicov' output format, i.e. an extended\nBED12 file\
    \ where each colum past the 12th lists the read counts for\none sample/condition."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_read_length
  doc: Read length of the RNA-seq experiment.
  type: boolean
  inputBinding:
    prefix: --readlength
- id: in_out
  doc: Output folder.
  type: Directory
  inputBinding:
    prefix: --out
- id: in_type
  doc: Normalization method, either 'TPM' (default) or 'RPKM'.
  type: boolean
  inputBinding:
    prefix: --type
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
  doc: Output folder.
  type: Directory
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- normalize_multicov.pl
