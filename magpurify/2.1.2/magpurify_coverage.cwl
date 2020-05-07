class: CommandLineTool
id: magpurify_coverage.cwl
inputs:
- id: fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: out
  doc: Output directory to store results and intermediate files
  type: string
  inputBinding:
    position: 1
- id: bams
  doc: Path to input sorted BAM file(s)
  type: string
  inputBinding:
    position: 2
- id: max_deviation
  doc: 'Contigs with coverage greater than [max-deviation * mean coverage] or less
    than [(1/max-deviation) * mean coverage] will be flagged as outliers (default:
    5.0)'
  type: long
  inputBinding:
    prefix: --max-deviation
- id: weighted_mean
  doc: 'Compute the mean weighted by the contig length (default: False)'
  type: boolean
  inputBinding:
    prefix: --weighted-mean
- id: threads
  doc: 'Number of CPUs to use (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- magpurify
- coverage
