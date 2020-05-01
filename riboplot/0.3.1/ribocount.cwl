#!/usr/bin/env cwl-runner

baseCommand:
- ribocount
class: CommandLineTool
cwlVersion: v1.0
id: ribocount
inputs:
- doc: 'Read lengths to consider (default: 0). Multiple read lengths should be separated
    by commas. If multiple read lengths are specified, corresponding read offsets
    should also be specified. If you do not wish to apply an offset, please input
    0 for the corresponding read length'
  id: read_lengths
  inputBinding:
    prefix: --read_lengths
  type: string
- doc: 'Read offsets (default: 0). Multiple read offsets should be separated by commas'
  id: read_offsets
  inputBinding:
    prefix: --read_offsets
  type: string
- doc: Flag. Output reads in 5' region
  id: count_five
  inputBinding:
    prefix: --count_five
  type: boolean
- doc: Flag. Output reads in 3' region
  id: count_three
  inputBinding:
    prefix: --count_three
  type: boolean
- doc: Output file for results (HTML)
  id: html_file
  inputBinding:
    prefix: --html_file
  type: string
- doc: Files are saved in this directory
  id: output_path
  inputBinding:
    prefix: --output_path
  type: string
- doc: Flag. Produce debug output
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: Ribo-Seq alignment file in BAM format
  id: ribo_file
  inputBinding:
    prefix: --ribo_file
  type: string
- doc: FASTA format file of the transcriptome
  id: transcriptome_fast_a
  inputBinding:
    prefix: --transcriptome_fasta
  type: string
