class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/wtmer.cwl
inputs:
- id: long_reads_file
  doc: Long reads sequences file, + *
  type: string
  inputBinding:
    prefix: -i
- id: output_file_kmerfrequency
  doc: Output file of kmer_frequency, *
  type: string
  inputBinding:
    prefix: -o
- id: force_overwrite
  doc: Force overwrite
  type: boolean
  inputBinding:
    prefix: -f
- id: disable_homopolymer_compression
  doc: Disable homopolymer compression
  type: boolean
  inputBinding:
    prefix: -H
- id: kmer_size_k
  doc: Kmer size, 5 <= <-k> <= 16, [16]
  type: long
  inputBinding:
    prefix: -k
outputs: []
cwlVersion: v1.1
baseCommand:
- wtmer
