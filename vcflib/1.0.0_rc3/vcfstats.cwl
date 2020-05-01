#!/usr/bin/env cwl-runner

baseCommand:
- vcfstats
class: CommandLineTool
cwlVersion: v1.0
id: vcfstats
inputs:
- doc: specify a region on which to target the stats, requires a BGZF compressed file
    which has been indexed with tabix.  any number of regions may be specified.
  id: region
  inputBinding:
    prefix: --region
  type: boolean
- doc: add the statistics intermediate information to the VCF file, writing out VCF
    records instead of summary statistics
  id: add_info
  inputBinding:
    prefix: --add-info
  type: boolean
- doc: only add the type= field to the info (faster than -a)
  id: add_type
  inputBinding:
    prefix: --add-type
  type: boolean
- doc: don't out the indel and mnp length-frequency spectra
  id: no_length_frequency
  inputBinding:
    prefix: --no-length-frequency
  type: boolean
- doc: match score for SW algorithm
  id: match_score
  inputBinding:
    prefix: --match-score
  type: string
- doc: mismatch score for SW algorithm
  id: mismatch_score
  inputBinding:
    prefix: --mismatch-score
  type: string
- doc: gap open penalty for SW algorithm
  id: gap_open_penalty
  inputBinding:
    prefix: --gap-open-penalty
  type: string
- doc: gap extension penalty for SW algorithm
  id: gap_extend_penalty
  inputBinding:
    prefix: --gap-extend-penalty
  type: string
