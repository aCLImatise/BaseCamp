class: CommandLineTool
id: outputLayout.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -G
- id: in_ignore_corrected_fragments
  doc: ignore corrected fragments less than 500 bp
  type: long
  inputBinding:
    prefix: -l
- id: in_input_prefix_of
  doc: input prefix of
  type: boolean
  inputBinding:
    prefix: -i
- id: in_output_prefix_asm
  doc: output prefix of asm
  type: string
  inputBinding:
    prefix: -o
- id: in_maximum_uncorrected_gap
  doc: 'The maximum uncorrected PacBio gap that will be allowed. When there is no
    short-read coverage for a region, by default the pipeline will split a PacBio
    sequence. This option allows a number of PacBio sequences without short-read coverage
    to remain. For example, specifying 50, will mean 50bp can have no short-read coverage
    without splitting the PacBio sequence. Warning: this will allow more sequences
    that went through the SMRTportal to not be fixed.'
  type: long
  inputBinding:
    prefix: -M
- id: in_level_verbosity_higher
  doc: level of verbosity. Higher values generate more debugging output
  type: long
  inputBinding:
    prefix: -v
- id: in_consider_pileup_times
  doc: consider a pileup of 0.000000 times the mean for a single corrected read to
    be a repeat and distribute reads to their best locations (this is only useful
    for metagenomic or non-even coverage datasets. Otherwise the global repeat estimate
    is used instead)
  type: long
  inputBinding:
    prefix: -R
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- outputLayout
