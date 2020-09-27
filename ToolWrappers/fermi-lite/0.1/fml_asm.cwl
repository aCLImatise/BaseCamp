class: CommandLineTool
id: fml_asm.cwl
inputs:
- id: in_kmer_length_error
  doc: k-mer length for error correction (0 for auto; -1 to disable) [0]
  type: long
  inputBinding:
    prefix: -e
- id: in_range_kmer_read
  doc: range of k-mer & read count thresholds for ec and graph cleaning [4,8]
  type:
  - long
  inputBinding:
    prefix: -c
- id: in_min_overlap_length
  doc: min overlap length during initial assembly [33]
  type: long
  inputBinding:
    prefix: -l
- id: in_drop_overlap_length
  doc: drop an overlap if its length is below maxOvlpLen*FLOAT [0.7]
  type: double
  inputBinding:
    prefix: -r
- id: in_number_threads_use
  doc: number of threads (don't use multi-threading for small data sets) [1]
  type: long
  inputBinding:
    prefix: -t
- id: in_discard_heterozygotes_apply
  doc: discard heterozygotes (apply this to assemble bacterial genomes)
  type: boolean
  inputBinding:
    prefix: -A
- id: in_in_dot_fq
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fml-asm
