class: CommandLineTool
id: nucleosome_prediction.pl.cwl
inputs:
- id: in_raw_binding
  doc: ': Output the raw nucleosome binding log-ratio per basepair instead of the
    default average occupancy probabilities.'
  type: boolean
  inputBinding:
    prefix: -raw_binding
- id: in__title
  doc: ':    Title.'
  type: string
  inputBinding:
    prefix: -t
- id: in_sequence_file_fasta
  doc: ':    Sequence file (fasta format).'
  type: File
  inputBinding:
    prefix: -s
- id: in_nucleosomes_concentration_default
  doc: ':    Nucleosomes concentration (default: 0.1).'
  type: long
  inputBinding:
    prefix: -c
- id: in_temp
  doc: ': (Inverse) Temperature scaling (default: 1).'
  type: long
  inputBinding:
    prefix: -temp
- id: in_prefix_use_default
  doc: ':    Prefix of output files to use (default: the process id).'
  type: string
  inputBinding:
    prefix: -p
- id: in_tab
  doc: ':        Produce a tab delimited output file (otherwise, print output to STDOUT).'
  type: File
  inputBinding:
    prefix: -tab
- id: in_gxp
  doc: ':        Produce a gxp (Genomica project file) output file.'
  type: File
  inputBinding:
    prefix: -gxp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_tab
  doc: ':        Produce a tab delimited output file (otherwise, print output to STDOUT).'
  type: File
  outputBinding:
    glob: $(inputs.in_tab)
- id: out_gxp
  doc: ':        Produce a gxp (Genomica project file) output file.'
  type: File
  outputBinding:
    glob: $(inputs.in_gxp)
cwlVersion: v1.1
baseCommand:
- nucleosome_prediction.pl
