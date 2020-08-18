class: CommandLineTool
id: ../../../fml_asm.cwl
inputs:
- id: kmer_length_disable
  doc: k-mer length for error correction (0 for auto; -1 to disable) [0]
  type: long
  inputBinding:
    prefix: -e
- id: range_kmer_read
  doc: range of k-mer & read count thresholds for ec and graph cleaning [4,8]
  type:
  - long
  inputBinding:
    prefix: -c
- id: min_overlap_length
  doc: min overlap length during initial assembly [33]
  type: long
  inputBinding:
    prefix: -l
- id: drop_overlap_length
  doc: drop an overlap if its length is below maxOvlpLen*FLOAT [0.7]
  type: double
  inputBinding:
    prefix: -r
- id: number_threads_use
  doc: number of threads (don't use multi-threading for small data sets) [1]
  type: long
  inputBinding:
    prefix: -t
- id: discard_heterozygotes_apply
  doc: discard heterozygotes (apply this to assemble bacterial genomes)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fml-asm
