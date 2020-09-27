class: CommandLineTool
id: Phi.cwl
inputs:
- id: in_filename_fasta_format
  doc: ': Filename = FASTA format'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_filename_strict_file
  doc: ': Filename = Strict phylip file'
  type: boolean
  inputBinding:
    prefix: -s
- id: in_filename_relaxed_file
  doc: ': Filename = Relaxed phylip file'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_alignmenttype_dao_ddnaaaa
  doc: ": AlignmentType = D|A|O where D=DNA\nA=AA and O=OTHER [default DNA]"
  type: boolean
  inputBinding:
    prefix: -t
- id: in_p
  doc: ': [#] = PHI permutation test [default = FALSE, #=1000]'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_change_default_window
  doc: ': # = Change default window size [default w = 100]'
  type: boolean
  inputBinding:
    prefix: -w
- id: in_report_statistics_nss
  doc: ': Report other statistics (NSS and Max Chi^2) [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -o
- id: in__verbose
  doc: ': Verbose [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -v
- id: in_print_color_scaled
  doc: ": [i] = Print color (scaled) incompatibility matrix (graph.ppm)\ni - Image\
    \ only (no ticks...) [default = FALSE]\n"
  type: boolean
  inputBinding:
    prefix: -g
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- Phi
