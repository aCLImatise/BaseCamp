#!/usr/bin/env cwl-runner

baseCommand:
- anvi-report-linkmers
class: CommandLineTool
cwlVersion: v1.0
id: anvi-report-linkmers
inputs:
- doc: (S) [INPUT_BAM(S) ...], --input-files INPUT_BAM(S) [INPUT_BAM(S) ...] Sorted
    and indexed BAM files to analyze. It is essential that all BAM files must be the
    result of mappings against the same contigs.
  id: i
  inputBinding:
    prefix: -i
  type: string
- doc: This is the file where you list the contigs, and nucleotide positions you are
    interested in. This is supposed to be a TAB-delimited file with two columns. In
    each line, the first column should be the contig name, and the second column should
    be the comma- separated list of integers for nucleotide positions.
  id: contigs_and_positions
  inputBinding:
    prefix: --contigs-and-positions
  type: string
- doc: When declared, only reads that cover all positions will be reported. It is
    necessary to use this flag if you want to perform oligotyping-like analyses on
    matching reads.
  id: only_complete_links
  inputBinding:
    prefix: --only-complete-links
  type: boolean
- doc: File path to store results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: File
- doc: When declared, the program will list contigs in the BAM file and exit gracefully
    without any further analysis.
  id: list_contigs
  inputBinding:
    prefix: --list-contigs
  type: boolean
