#!/usr/bin/env cwl-runner

baseCommand:
- borf
class: CommandLineTool
cwlVersion: v1.0
id: borf
inputs:
- doc: fasta file to predict ORFs
  id: fast_a_file
  inputBinding:
    position: 0
  type: string
- doc: 'path to write output files. [OUTPUT_PATH].pep and [OUTPUT_PATH].txt (default:
    input .fa file name)'
  id: output_path
  inputBinding:
    prefix: --output_path
  type: string
- doc: Predict orfs for both strands
  id: strand
  inputBinding:
    prefix: --strand
  type: boolean
- doc: Return all ORFs for each sequence longer than the cutoff
  id: all_orfs
  inputBinding:
    prefix: --all_orfs
  type: boolean
- doc: 'Minimum ORF length (AA). (default: 100)'
  id: orf_length
  inputBinding:
    prefix: --orf_length
  type: string
- doc: 'Minimum length (AA) of uninterupted sequence upstream of ORF to be included
    for incomplete_5prime transcripts (default: 50)'
  id: upstream_incomplete_length
  inputBinding:
    prefix: --upstream_incomplete_length
  type: string
- doc: Number of fasta records to read in in each batch
  id: batch_size
  inputBinding:
    prefix: --batch_size
  type: string
- doc: Force overwriting of output files?
  id: force_overwrite
  inputBinding:
    prefix: --force_overwrite
  type: boolean
