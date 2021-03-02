class: CommandLineTool
id: magpurify_coverage.cwl
inputs:
- id: in_max_deviation
  doc: "Contigs with coverage greater than [max-deviation *\nmean coverage] or less\
    \ than [(1/max-deviation) * mean\ncoverage] will be flagged as outliers (default:\
    \ 5.0)"
  type: long?
  inputBinding:
    prefix: --max-deviation
- id: in_weighted_mean
  doc: "Compute the mean weighted by the contig length\n(default: False)"
  type: boolean?
  inputBinding:
    prefix: --weighted-mean
- id: in_threads
  doc: 'Number of CPUs to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_fna
  doc: Path to input genome in FASTA format
  type: string
  inputBinding:
    position: 0
- id: in_out
  doc: Output directory to store results and intermediate
  type: string
  inputBinding:
    position: 1
- id: in_files
  doc: bams                  Path to input sorted BAM file(s)
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- magpurify
- coverage
