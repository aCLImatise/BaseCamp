class: CommandLineTool
id: correctPacBio.cwl
inputs:
- id: in_mandatory_path_gkpstore
  doc: Mandatory path to a gkpStore.
  type: boolean
  inputBinding:
    prefix: -G
- id: in_more_fraction_error
  doc: no more than 0.015 fraction (1.5%) error
  type: long
  inputBinding:
    prefix: -e
- id: in_no_more_errors
  doc: no more than 0 errors
  type: long
  inputBinding:
    prefix: -E
- id: in_ignore_overlaps_rate
  doc: ignore overlaps over this rate before correction
  type: long
  inputBinding:
    prefix: -c
- id: in_use_threads_process
  doc: use 2 threads to process correction in parallel
  type: long
  inputBinding:
    prefix: -t
- id: in_output_results_files
  doc: 'output 100 results files, corresponds to #of parallel consensus jobs desired'
  type: long
  inputBinding:
    prefix: -p
- id: in_output_prefix_asm
  doc: output prefix of asm
  type: string
  inputBinding:
    prefix: -o
- id: in_specify_coverage_integer
  doc: Specify the pacBio coverage (integer) instead of automatically estimating.
  type: long
  inputBinding:
    prefix: -C
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
- id: in_percentage_short_reads
  doc: The percentage of short reads to use to recruit other PacBio sequences to fill
    coverage gaps. Must be a decimal value between 0 and 1. Higher values lead to
    a longer runtime but more gaps being recovered. The default is 0.010000
  type: long
  inputBinding:
    prefix: -m
- id: in_percentage_used_estimate
  doc: The percentage of mates used to estimate the library insert size. Must be a
    decimal value between 0 and 1. For example, specifying 0.10 will use 10 percent
    of the mates to estimate the insert size. The default is 0.050000
  type: long
  inputBinding:
    prefix: -S
- id: in_level_verbosity_higher
  doc: level of verbosity. Higher values generate more debugging output
  type: long
  inputBinding:
    prefix: -v
- id: in_consider_pileup_times
  doc: consider a pileup of 2.000000 times the mean for a single corrected read to
    be a repeat and distribute reads to their best locations (this is only useful
    for metagenomic or non-even coverage datasets. Otherwise the global repeat estimate
    is used instead)
  type: long
  inputBinding:
    prefix: -R
- id: in_var_13
  doc: ''
  type: string
  inputBinding:
    prefix: -O
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- correctPacBio
