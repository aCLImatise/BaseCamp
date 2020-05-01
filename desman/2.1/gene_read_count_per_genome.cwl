#!/usr/bin/env cwl-runner

baseCommand:
- gene_read_count_per_genome.py
class: CommandLineTool
cwlVersion: v1.0
id: gene_read_count_per_genome.py
inputs:
- doc: gene positions
  id: gene_file
  inputBinding:
    position: 0
  type: string
- doc: Reference fasta file
  id: re_ffa
  inputBinding:
    position: 1
  type: string
- doc: BAM files with mappings to contigs
  id: bam_files
  inputBinding:
    position: 2
  type: string
- doc: Specify the maximum number of processors to use, if absent, all present processors
    will be used.
  id: max_n_processors
  inputBinding:
    prefix: --max_n_processors
  type: long
