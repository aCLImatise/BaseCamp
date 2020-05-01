#!/usr/bin/env cwl-runner

baseCommand:
- unicycler_align
class: CommandLineTool
cwlVersion: v1.0
id: unicycler_align
inputs:
- doc: FASTA file containing one or more reference sequences
  id: ref
  inputBinding:
    prefix: --ref
  type: string
- doc: FASTQ or FASTA file of long reads
  id: reads
  inputBinding:
    prefix: --reads
  type: string
- doc: SAM file of resulting alignments
  id: sam
  inputBinding:
    prefix: --sam
  type: string
- doc: FASTA file of known contamination in long reads
  id: contamination
  inputBinding:
    prefix: --contamination
  type: string
- doc: 'Comma-delimited string of alignment scores: match, mismatch, gap open, gap
    extend (default: 3,-6,-5,-2)'
  id: scores
  inputBinding:
    prefix: --scores
  type: string
- doc: 'Score threshold - alignments below this are considered poor (default: set
    threshold automatically)'
  id: low_score
  inputBinding:
    prefix: --low_score
  type: string
- doc: 'Include alignments in the results even if they are below the low score threshold
    (default: low-scoring alignments are discarded)'
  id: keep_bad
  inputBinding:
    prefix: --keep_bad
  type: boolean
- doc: 'A number from 0 (least sensitive) to 3 (most sensitive) (default: 0)'
  id: sensitivity
  inputBinding:
    prefix: --sensitivity
  type: string
- doc: 'Number of threads used (default: number of CPUs, up to 8)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'Level of stdout information (0 to 4) (default: 1)'
  id: verbosity
  inputBinding:
    prefix: --verbosity
  type: string
- doc: 'Minimum alignment length (bp) - exclude alignments shorter than this length
    (default: 100)'
  id: min_len
  inputBinding:
    prefix: --min_len
  type: long
- doc: 'Allow this much overlap between alignments in a single read (default: 100)'
  id: allowed_overlap
  inputBinding:
    prefix: --allowed_overlap
  type: string
