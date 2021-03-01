class: CommandLineTool
id: novoBreak.cwl
inputs:
- id: in_tumor_bam_file
  doc: Tumor bam file
  type: File?
  inputBinding:
    prefix: -i
- id: in_normal_bam_file
  doc: Normal bam file
  type: File?
  inputBinding:
    prefix: -c
- id: in_reference_file_fasta
  doc: Reference file in fasta format
  type: File?
  inputBinding:
    prefix: -r
- id: in_kmer_size_
  doc: Kmer size, <=31 [31]
  type: long?
  inputBinding:
    prefix: -k
- id: in_output_kmer
  doc: Output kmer
  type: string?
  inputBinding:
    prefix: -o
- id: in_output_germline_events
  doc: Output germline events [0]
  type: long?
  inputBinding:
    prefix: -g
- id: in_minimum_kmer_count
  doc: Minimum kmer count regarded as novo kmers [3]
  type: long?
  inputBinding:
    prefix: -m
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- novoBreak
