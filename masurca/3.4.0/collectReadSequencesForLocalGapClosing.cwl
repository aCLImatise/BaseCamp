#!/usr/bin/env cwl-runner

baseCommand:
- collectReadSequencesForLocalGapClosing
class: CommandLineTool
cwlVersion: v1.0
id: collectreadsequencesforlocalgapclosing
inputs:
- doc: ''
  id: cmdline_parse
  inputBinding:
    position: 0
  type: string
- doc: '*Name of the faux reads file'
  id: faux_reads_file
  inputBinding:
    prefix: --faux-reads-file
  type: File
- doc: '*Name of the file with matches from faux reads to k-unitigs'
  id: faux_read_matches_to_kunis_file
  inputBinding:
    prefix: --faux-read-matches-to-kunis-file
  type: File
- doc: '*Name of the file with matches from reads to k-unitigs'
  id: read_matches_to_kunis_file
  inputBinding:
    prefix: --read-matches-to-kunis-file
  type: File
- doc: Name of the reads file(s)
  id: reads_file
  inputBinding:
    prefix: --reads-file
  type: File
- doc: Directory to use for files we keep for local gap closing (.)
  id: dir_for_gaps
  inputBinding:
    prefix: --dir-for-gaps
  type: File
- doc: Number of joins put in each directory (1)
  id: num_joins_per_directory
  inputBinding:
    prefix: --num-joins-per-directory
  type: long
- doc: Number of reads to hold in memory for gap closing bins (100000000)
  id: max_reads_in_memory
  inputBinding:
    prefix: --max-reads-in-memory
  type: string
