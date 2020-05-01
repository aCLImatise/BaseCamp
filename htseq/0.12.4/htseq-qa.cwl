#!/usr/bin/env cwl-runner

baseCommand:
- htseq-qa
class: CommandLineTool
cwlVersion: v1.0
id: htseq-qa
inputs:
- doc: The file to count reads in (SAM/BAM or Fastq)
  id: read_filename
  inputBinding:
    position: 0
  type: string
- doc: 'type of read_file (one of: sam [default], bam, solexa- export, fastq, solexa-fastq)'
  id: type
  inputBinding:
    prefix: --type
  type: string
- doc: output filename (default is <read_file>.pdf)
  id: outfile
  inputBinding:
    prefix: --outfile
  type: string
- doc: the maximum read length (when not specified, the script guesses from the file
  id: read_length
  inputBinding:
    prefix: --readlength
  type: string
- doc: the gamma factor for the contrast adjustment of the quality score plot
  id: gamma
  inputBinding:
    prefix: --gamma
  type: string
- doc: do not split reads in unaligned and aligned ones
  id: no_split
  inputBinding:
    prefix: --nosplit
  type: boolean
- doc: 'the maximum quality score that appears in the data (default: 41)'
  id: max_qual
  inputBinding:
    prefix: --maxqual
  type: long
- doc: For SAM/BAM input files, ignore alignments that are not primary. This only
    affects 'multimapper' reads that align to several regions in the genome. By choosing
    this option, each read will only count as one; without this option, each of its
    alignments counts as one.
  id: primary_only
  inputBinding:
    prefix: --primary-only
  type: boolean
- doc: Limit the analysis to the first N reads/alignments.
  id: max_records
  inputBinding:
    prefix: --max-records
  type: long
