class: CommandLineTool
id: ../../../novoBreak.cwl
inputs:
- id: tumor_bam_file
  doc: Tumor bam file
  type: string
  inputBinding:
    prefix: -i
- id: normal_bam_file
  doc: Normal bam file
  type: string
  inputBinding:
    prefix: -c
- id: reference_file_fasta
  doc: Reference file in fasta format
  type: string
  inputBinding:
    prefix: -r
- id: kmer_size_
  doc: Kmer size, <=31 [31]
  type: long
  inputBinding:
    prefix: -k
- id: output_kmer
  doc: Output kmer
  type: string
  inputBinding:
    prefix: -o
- id: output_germline_events
  doc: Output germline events [0]
  type: long
  inputBinding:
    prefix: -g
- id: minimum_kmer_count
  doc: Minimum kmer count regarded as novo kmers [3]
  type: long
  inputBinding:
    prefix: -m
outputs: []
cwlVersion: v1.1
baseCommand:
- novoBreak
