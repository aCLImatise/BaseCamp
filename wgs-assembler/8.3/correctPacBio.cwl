class: CommandLineTool
id: correctPacBio.cwl
inputs:
- id: o
  doc: Mandatory path to an ovlStore.
  type: boolean
  inputBinding:
    prefix: -O
- id: g
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -G
- id: e
  doc: 0.15   no more than 0.015 fraction (1.5%) error
  type: boolean
  inputBinding:
    prefix: -e
- id: e
  doc: 0      no more than 0 errors
  type: boolean
  inputBinding:
    prefix: -E
- id: c
  doc: 0.25   ignore overlaps over this rate before correction
  type: boolean
  inputBinding:
    prefix: -c
- id: t
  doc: 2     use 2 threads to process correction in parallel
  type: boolean
  inputBinding:
    prefix: -t
- id: p
  doc: '100     output 100 results files, corresponds to #of parallel consensus jobs
    desired'
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: output prefix of asm
  type: string
  inputBinding:
    prefix: -o
- id: c
  doc: 255          Specify the pacBio coverage (integer) instead of automatically
    estimating.
  type: boolean
  inputBinding:
    prefix: -C
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
- id: m
  doc: 0.010000             The percentage of short reads to use to recruit other
    PacBio sequences to fill coverage gaps. Must be a decimal value between 0 and
    1. Higher values lead to a longer runtime but more gaps being recovered. The default
    is 0.010000
  type: boolean
  inputBinding:
    prefix: -m
- id: s
  doc: 0.050000             The percentage of mates used to estimate the library insert
    size. Must be a decimal value between 0 and 1. For example, specifying 0.10 will
    use 10 percent of the mates to estimate the insert size. The default is 0.050000
  type: boolean
  inputBinding:
    prefix: -S
- id: v
  doc: 0     level of verbosity. Higher values generate more debugging output
  type: boolean
  inputBinding:
    prefix: -v
- id: r
  doc: 2.000000     consider a pileup of 2.000000 times the mean for a single corrected
    read to be a repeat and distribute reads to their best locations (this is only
    useful for metagenomic or non-even coverage datasets. Otherwise the global repeat
    estimate is used instead)
  type: boolean
  inputBinding:
    prefix: -R
outputs: []
cwlVersion: v1.1
baseCommand:
- correctPacBio
