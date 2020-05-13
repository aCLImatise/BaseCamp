class: CommandLineTool
id: split_fasta.py.cwl
inputs:
- id: input
  doc: The input file in FASTA format.
  type: string
  inputBinding:
    prefix: --input
- id: threshold
  doc: Any splitted file should not have the size (in bytes) over this threshold if
    that is possible. If this is set to 1 then one sequence will be written in each
    output FASTA file. Default is 2147482648.
  type: string
  inputBinding:
    prefix: --threshold
- id: seq_per_fast_a
  doc: This is another way to split the input FASTA file by giving the number of sequences
    per output FASTA file. If this option is used it will over ride the '-- threshold'.
  type: string
  inputBinding:
    prefix: --seq_per_fasta
- id: size
  doc: A file containing the number of nucleotides which are in the input FASTA file.
    If it is not given then the file size will be used.
  type: long
  inputBinding:
    prefix: --size
- id: seqs
  doc: A file containing the number of sequences which are in the input FASTA file.
    If it is not given then the file size divided by 50 will be used. It is used/needed
    by '--seq_per_fasta'
  type: string
  inputBinding:
    prefix: --seqs
- id: output
  doc: The output file which contains the paths to the splitted FASTA files.
  type: string
  inputBinding:
    prefix: --output
- id: output_max_lens
  doc: The output file which contains the paths to the maximum lengths of the splitted
    FASTA files.
  type: string
  inputBinding:
    prefix: --output-max-lens
outputs: []
cwlVersion: v1.1
baseCommand:
- split-fasta.py
