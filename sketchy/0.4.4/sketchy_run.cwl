class: CommandLineTool
id: sketchy_run.cwl
inputs:
- id: fast_q
  doc: Path to input Fastq containing basecalled nanopore reads  [required]
  type: File
  inputBinding:
    prefix: --fastq
- id: sketch
  doc: Path to reference sketch local files or species template  [required]
  type: File
  inputBinding:
    prefix: --sketch
- id: ranks
  doc: Output highest ranking sum of shared hashes [10]
  type: long
  inputBinding:
    prefix: --ranks
- id: outdir
  doc: Output directory for data and plots [sketchy]
  type: File
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: Prefix for output files [sketchy].
  type: string
  inputBinding:
    prefix: --prefix
- id: limit
  doc: Maximum number of reads to predict on [all]
  type: long
  inputBinding:
    prefix: --limit
- id: palette
  doc: Brewer color palette for plots [YlGnBu]
  type: string
  inputBinding:
    prefix: --palette
- id: stable
  doc: Stability parameter to compute stable breakpoints, in reads [1000]
  type: long
  inputBinding:
    prefix: --stable
- id: threads
  doc: Threads for sketch queries in Mash [4]
  type: long
  inputBinding:
    prefix: --threads
- id: home
  doc: 'Sketchy path to reference sketch home directory. Can be set via environmental
    variable: SKETCHY_PATH'
  type: File
  inputBinding:
    prefix: --home
- id: quiet
  doc: Run without logging output or progress bar.
  type: boolean
  inputBinding:
    prefix: --quiet
outputs: []
cwlVersion: v1.1
baseCommand:
- sketchy
- run
