class: CommandLineTool
id: FastaIndex.cwl
inputs:
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_a
  doc: FASTA file(s)
  type: File
  inputBinding:
    prefix: --fasta
- id: in_out
  doc: output stream    [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: in_contigs_contig_regions
  doc: "[REGIONS [REGIONS ...]], --regions [REGIONS [REGIONS ...]]\ncontig(s) or contig\
    \ region(s) to output (returns reverse complement if end larger than start)"
  type: boolean
  inputBinding:
    prefix: -r
- id: in_calculate_nxx_n
  doc: calculate NXX and exit ie N50
  type: long
  inputBinding:
    prefix: -N
- id: in_calculate_lxx_l
  doc: calculate LXX and exit ie L50
  type: long
  inputBinding:
    prefix: -L
- id: in_stats
  doc: return FastA stats aka fasta_stats
  type: boolean
  inputBinding:
    prefix: --stats
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- FastaIndex
