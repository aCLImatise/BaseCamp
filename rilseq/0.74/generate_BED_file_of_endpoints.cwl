#!/usr/bin/env cwl-runner

baseCommand:
- generate_BED_file_of_endpoints.py
class: CommandLineTool
cwlVersion: v1.0
id: generate_bed_file_of_endpoints.py
inputs:
- doc: genome fasta file.
  id: genome
  inputBinding:
    position: 0
  type: string
- doc: File with list of reads and their fused positions.
  id: list_reads
  inputBinding:
    position: 1
  type: string
- doc: Name of track
  id: track_name
  inputBinding:
    position: 2
  type: string
- doc: Description of the track
  id: track_desc
  inputBinding:
    position: 3
  type: string
- doc: The original bam file (or several files) with the full reads.
  id: bam_files
  inputBinding:
    position: 4
  type: string
- doc: 'The original bam file is the reverse complement of the RNA. (default: False)'
  id: reverse
  inputBinding:
    prefix: --reverse
  type: boolean
- doc: 'Print only reads that are found to be significant in this summary file. (default:
    None)'
  id: summary
  inputBinding:
    prefix: --summary
  type: string
- doc: 'Print reads involve only this gene (EcoCyc ID), applies only with -s (default:
    None)'
  id: gene_name
  inputBinding:
    prefix: --gene_name
  type: string
- doc: 'Set a random score (0-1000) for each read, this will allow to present some
    of the reads in UCSC genome browser. (default: False)'
  id: rand_score
  inputBinding:
    prefix: --rand_score
  type: boolean
- doc: 'Color of first part, positive strand. (default: 255,0,0)'
  id: pos_first
  inputBinding:
    prefix: --pos_first
  type: string
- doc: 'Color of second part, positive strand. (default: 51,102,255)'
  id: pos_second
  inputBinding:
    prefix: --pos_second
  type: string
- doc: 'Color of first part, reverse strand. (default: 255,0,0)'
  id: rev_first
  inputBinding:
    prefix: --rev_first
  type: string
- doc: 'Color of second part, reverse strand. (default: 51,102,255)'
  id: rev_second
  inputBinding:
    prefix: --rev_second
  type: string
- doc: 'A comma separated dictionary of chromosome names from the BioCyc names to
    the bam file names. The names in the bam file should be the same as the UCSC genome
    browser (they will be printed). (default: COLI-K12,chr)'
  id: bc_chr_list
  inputBinding:
    prefix: --BC_chrlist
  type: string
