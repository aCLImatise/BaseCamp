class: CommandLineTool
id: triform2.cwl
inputs:
- id: treatment
  doc: Treatment (pull-down) file(s) in bam/bed/bed.gz/bed.bz2 format.
  type: string[]
  inputBinding:
    prefix: --treatment
- id: control
  doc: Control (input) file(s) in bam/bed/bed.gz/bed.bz2 format.
  type: string[]
  inputBinding:
    prefix: --control
- id: number_cores
  doc: 'Number of cpus to use. Can use at most one per chromosome. Default: 1.'
  type: string
  inputBinding:
    prefix: --number-cores
- id: genome
  doc: Genome version to use.
  type: string
  inputBinding:
    prefix: --genome
- id: bed_graph
  doc: Path to write bedgraph file to, if desired.
  type: string
  inputBinding:
    prefix: --bedgraph
- id: max_p
  doc: Used to calculate minimum upper-tail z-value (default corresponds to standard
    normal p = 0.1)
  type: long
  inputBinding:
    prefix: --max-p
- id: min_shift
  doc: Minimum inter-strand shift (lag) between peak coverage distributions (default
    10 bp).
  type: long
  inputBinding:
    prefix: --min-shift
- id: min_width
  doc: Minimum number of bp (peak width) in peak-like region (default 10 bp).
  type: long
  inputBinding:
    prefix: --min-width
- id: read_width
  doc: 'Read width w, symmetrically extended to a fixed value. Must be larger than
    the flank size. Default: 100 bp.'
  type: string
  inputBinding:
    prefix: --read-width
- id: flank_distance
  doc: 'Fixed spacing between central and flanking locations (must be > w). Default:
    150 bp.'
  type: string
  inputBinding:
    prefix: --flank-distance
- id: min_enrichment
  doc: Minimum local enrichment ratio (default 3/8 quantile of the enrichment ratio)
  type: long
  inputBinding:
    prefix: --min-enrichment
outputs: []
cwlVersion: v1.1
baseCommand:
- triform2
