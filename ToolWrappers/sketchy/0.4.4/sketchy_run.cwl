class: CommandLineTool
id: sketchy_run.cwl
inputs:
- id: in_fast_q
  doc: Path to input Fastq containing basecalled nanopore
  type: File?
  inputBinding:
    prefix: --fastq
- id: in_sketch
  doc: Path to reference sketch local files or species
  type: File?
  inputBinding:
    prefix: --sketch
- id: in_ranks
  doc: Output highest ranking sum of shared hashes [10]
  type: long?
  inputBinding:
    prefix: --ranks
- id: in_outdir
  doc: Output directory for data and plots [sketchy]
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: Prefix for output files [sketchy].
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_limit
  doc: Maximum number of reads to predict on [all]
  type: long?
  inputBinding:
    prefix: --limit
- id: in_palette
  doc: Brewer color palette for plots [YlGnBu]
  type: string?
  inputBinding:
    prefix: --palette
- id: in_stable
  doc: "Stability parameter to compute stable breakpoints, in\nreads [1000]"
  type: long?
  inputBinding:
    prefix: --stable
- id: in_threads
  doc: Threads for sketch queries in Mash [4]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_home
  doc: "Sketchy path to reference sketch home directory. Can\nbe set via environmental\
    \ variable: SKETCHY_PATH"
  type: File?
  inputBinding:
    prefix: --home
- id: in_quiet
  doc: Run without logging output or progress bar.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_reads
  doc: '[required]'
  type: string
  inputBinding:
    position: 0
- id: in_template
  doc: '[required]'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory for data and plots [sketchy]
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- sketchy
- run
