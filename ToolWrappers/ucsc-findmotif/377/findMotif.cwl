class: CommandLineTool
id: findMotif.cwl
inputs:
- id: in_motif
  doc: '- search for this specified motif (case ignored, [acgt] only)'
  type: string?
  inputBinding:
    prefix: -motif
- id: in_chr
  doc: '- process only this one chrN from the sequence'
  type: string?
  inputBinding:
    prefix: -chr
- id: in_strand
  doc: =<+|-> - limit to only one strand.  Default is both.
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_bed_output
  doc: '- output bed format (this is the default)'
  type: boolean?
  inputBinding:
    prefix: -bedOutput
- id: in_wig_output
  doc: '- output wiggle data format instead of bed file'
  type: File?
  inputBinding:
    prefix: -wigOutput
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_wig_output
  doc: '- output wiggle data format instead of bed file'
  type: File?
  outputBinding:
    glob: $(inputs.in_wig_output)
hints: []
cwlVersion: v1.1
baseCommand:
- findMotif
