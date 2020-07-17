class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/Phi.cwl
inputs:
- id: filename_fasta_format
  doc: ': Filename = FASTA format'
  type: boolean
  inputBinding:
    prefix: -f
- id: filename_strict_phylip
  doc: ': Filename = Strict phylip file'
  type: boolean
  inputBinding:
    prefix: -s
- id: filename_relaxed_phylip
  doc: ': Filename = Relaxed phylip file'
  type: boolean
  inputBinding:
    prefix: -r
- id: alignmenttype_dao_aaa
  doc: ': AlignmentType = D|A|O where D=DNA A=AA and O=OTHER [default DNA]'
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: ': [#] = PHI permutation test [default = FALSE, #=1000]'
  type: boolean
  inputBinding:
    prefix: -p
- id: change_default_window
  doc: ': # = Change default window size [default w = 100]'
  type: boolean
  inputBinding:
    prefix: -w
- id: report_statistics_nss
  doc: ': Report other statistics (NSS and Max Chi^2) [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -o
- id: _verbose
  doc: ': Verbose [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -v
- id: g
  doc: ': [i] = Print color (scaled) incompatibility matrix (graph.ppm) i - Image
    only (no ticks...) [default = FALSE]'
  type: boolean
  inputBinding:
    prefix: -g
outputs: []
cwlVersion: v1.1
baseCommand:
- Phi
