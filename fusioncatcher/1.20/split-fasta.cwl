#!/usr/bin/env cwl-runner

baseCommand:
- split-fasta.py
class: CommandLineTool
cwlVersion: v1.0
id: split-fasta.py
inputs:
- doc: The input file in FASTA format.
  id: input
  inputBinding:
    prefix: --input
  type: string
- doc: Any splitted file should not have the size (in bytes) over this threshold if
    that is possible. If this is set to 1 then one sequence will be written in each
    output FASTA file. Default is 2147482648.
  id: threshold
  inputBinding:
    prefix: --threshold
  type: string
- doc: This is another way to split the input FASTA file by giving the number of sequences
    per output FASTA file. If this option is used it will over ride the '-- threshold'.
  id: seq_per_fast_a
  inputBinding:
    prefix: --seq_per_fasta
  type: string
- doc: A file containing the number of nucleotides which are in the input FASTA file.
    If it is not given then the file size will be used.
  id: size
  inputBinding:
    prefix: --size
  type: long
- doc: A file containing the number of sequences which are in the input FASTA file.
    If it is not given then the file size divided by 50 will be used. It is used/needed
    by '--seq_per_fasta'
  id: seqs
  inputBinding:
    prefix: --seqs
  type: string
- doc: The output file which contains the paths to the splitted FASTA files.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: The output file which contains the paths to the maximum lengths of the splitted
    FASTA files.
  id: output_max_lens
  inputBinding:
    prefix: --output-max-lens
  type: string
