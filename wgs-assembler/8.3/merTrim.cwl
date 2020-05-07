class: CommandLineTool
id: merTrim.cwl
inputs:
- id: correct
  doc: mers with count below n can be changed (that is, count >= n are correct mers)
  type: string
  inputBinding:
    prefix: -correct
- id: evidence
  doc: mers with count at least n will be used for changes
  type: string
  inputBinding:
    prefix: -evidence
- id: mc
  doc: screen for these adapter sequences
  type: string
  inputBinding:
    prefix: -mC
- id: mc_illumina
  doc: screen for common Illumina adapter sequences
  type: boolean
  inputBinding:
    prefix: -mCillumina
- id: mc454
  doc: screen for common 454 adapter and linker sequences
  type: boolean
  inputBinding:
    prefix: -mC454
- id: end_trim
  doc: (undocumented)
  type: boolean
  inputBinding:
    prefix: -endtrim
- id: not_rimming
  doc: do only correction, no trimming
  type: boolean
  inputBinding:
    prefix: -notrimming
- id: discard_zero
  doc: trash the whole read if coverage drops to zero in the middle
  type: boolean
  inputBinding:
    prefix: -discardzero
- id: discard_imperfect
  doc: trash the whole read if coverage isn't perfect
  type: boolean
  inputBinding:
    prefix: -discardimperfect
- id: not_rim_imperfect
  doc: do NOT trim off ends that make the coverage imperfect
  type: boolean
  inputBinding:
    prefix: -notrimimperfect
- id: end_trim_qv
  doc: trim ends of reads if they are below qv Q (Sanger encoded; default '2')
  type: string
  inputBinding:
    prefix: -endtrimqv
- id: nm
  doc: do NOT correct mismatch errors
  type: boolean
  inputBinding:
    prefix: -NM
- id: ni
  doc: do NOT correct indel errors
  type: boolean
  inputBinding:
    prefix: -NI
- id: t
  doc: use T CPU cores
  type: string
  inputBinding:
    prefix: -t
- id: v
  doc: report progress to stderr
  type: boolean
  inputBinding:
    prefix: -v
- id: v
  doc: report trimming evidence to stdout (more -V -> more reports)
  type: boolean
  inputBinding:
    prefix: -V
outputs: []
cwlVersion: v1.1
baseCommand:
- merTrim
