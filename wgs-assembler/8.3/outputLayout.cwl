class: CommandLineTool
id: outputLayout.cwl
inputs:
- id: g
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -G
- id: l
  doc: 500     ignore corrected fragments less than 500 bp
  type: boolean
  inputBinding:
    prefix: -l
- id: i
  doc: 'input prefix of '
  type: boolean
  inputBinding:
    prefix: -i
- id: o
  doc: output prefix of asm
  type: string
  inputBinding:
    prefix: -o
- id: m
  doc: '0            The maximum uncorrected PacBio gap that will be allowed. When
    there is no short-read coverage for a region, by default the pipeline will split
    a PacBio sequence. This option allows a number of PacBio sequences without short-read
    coverage to remain. For example, specifying 50, will mean 50bp can have no short-read
    coverage without splitting the PacBio sequence. Warning: this will allow more
    sequences that went through the SMRTportal to not be fixed.'
  type: boolean
  inputBinding:
    prefix: -M
- id: v
  doc: 0     level of verbosity. Higher values generate more debugging output
  type: boolean
  inputBinding:
    prefix: -v
- id: r
  doc: 0.000000     consider a pileup of 0.000000 times the mean for a single corrected
    read to be a repeat and distribute reads to their best locations (this is only
    useful for metagenomic or non-even coverage datasets. Otherwise the global repeat
    estimate is used instead)
  type: boolean
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- outputLayout
