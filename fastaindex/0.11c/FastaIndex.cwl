class: CommandLineTool
id: FastaIndex.cwl
inputs:
- id: verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: --verbose
- id: fast_a
  doc: FASTA file(s)
  type: string
  inputBinding:
    prefix: --fasta
- id: out
  doc: output stream    [stdout]
  type: string
  inputBinding:
    prefix: --out
- id: r
  doc: '[REGIONS [REGIONS ...]], --regions [REGIONS [REGIONS ...]] contig(s) or contig
    region(s) to output (returns reverse complement if end larger than start)'
  type: boolean
  inputBinding:
    prefix: -r
- id: n
  doc: calculate NXX and exit ie N50
  type: string
  inputBinding:
    prefix: -N
- id: l
  doc: calculate LXX and exit ie L50
  type: string
  inputBinding:
    prefix: -L
- id: stats
  doc: return FastA stats aka fasta_stats
  type: boolean
  inputBinding:
    prefix: --stats
outputs: []
cwlVersion: v1.1
baseCommand:
- FastaIndex
