class: CommandLineTool
id: triform2.cwl
inputs:
- id: in_treatment
  doc: "Treatment (pull-down) file(s) in\nbam/bed/bed.gz/bed.bz2 format."
  type: string[]
  inputBinding:
    prefix: --treatment
- id: in_control
  doc: "Control (input) file(s) in bam/bed/bed.gz/bed.bz2\nformat."
  type: string[]
  inputBinding:
    prefix: --control
- id: in_number_cores
  doc: "Number of cpus to use. Can use at most one per\nchromosome. Default: 1."
  type: long
  inputBinding:
    prefix: --number-cores
- id: in_genome
  doc: Genome version to use.
  type: string
  inputBinding:
    prefix: --genome
- id: in_bed_graph
  doc: Path to write bedgraph file to, if desired.
  type: File
  inputBinding:
    prefix: --bedgraph
- id: in_max_p
  doc: "Used to calculate minimum upper-tail z-value (default\ncorresponds to standard\
    \ normal p = 0.1)"
  type: long
  inputBinding:
    prefix: --max-p
- id: in_min_shift
  doc: "Minimum inter-strand shift (lag) between peak coverage\ndistributions (default\
    \ 10 bp)."
  type: long
  inputBinding:
    prefix: --min-shift
- id: in_min_width
  doc: "Minimum number of bp (peak width) in peak-like region\n(default 10 bp)."
  type: long
  inputBinding:
    prefix: --min-width
- id: in_read_width
  doc: "Read width w, symmetrically extended to a fixed value.\nMust be larger than\
    \ the flank size. Default: 100 bp."
  type: long
  inputBinding:
    prefix: --read-width
- id: in_flank_distance
  doc: "Fixed spacing between central and flanking locations\n(must be > w). Default:\
    \ 150 bp."
  type: long
  inputBinding:
    prefix: --flank-distance
- id: in_min_enrichment
  doc: "Minimum local enrichment ratio (default 3/8 quantile\nof the enrichment ratio)"
  type: long
  inputBinding:
    prefix: --min-enrichment
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- triform2
