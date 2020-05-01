#!/usr/bin/env cwl-runner

baseCommand:
- riboplot
class: CommandLineTool
cwlVersion: v1.0
id: riboplot
inputs:
- doc: RNA-Seq alignment file (BAM)
  id: rna_file
  inputBinding:
    prefix: --rna_file
  type: string
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
- doc: 'Color scheme to use (default: default)'
  id: color_scheme
  inputBinding:
    prefix: --color_scheme
  type: string
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
- doc: Transcript name
  id: transcript_name
  inputBinding:
    prefix: --transcript_name
  type: string
