class: CommandLineTool
id: clever.cwl
inputs:
- id: sorted
  doc: Input BAM file is sorted by position. Note that this requires alternative alignments
    to be given as XA tags (like produced by BWA, stampy, etc.).
  type: boolean
  inputBinding:
    prefix: --sorted
- id: use_x_a
  doc: Interprete XA tags in input BAM file. This option SHOULD be given for mappers
    writing XA tags like BWA and stampy.
  type: boolean
  inputBinding:
    prefix: --use_xa
- id: use_mapq
  doc: Use MAPQ value instead re-computing posteriors.
  type: boolean
  inputBinding:
    prefix: --use_mapq
- id: t
  doc: Number of threads to use (default=1).
  type: string
  inputBinding:
    prefix: -T
- id: f
  doc: Delete old result and working directory first (if present).
  type: boolean
  inputBinding:
    prefix: -f
- id: w
  doc: 'Working directory (default: <result-directory>/work).'
  type: string
  inputBinding:
    prefix: -w
- id: a
  doc: Do not (re-)compute AS tags. If given, the argument <ref.fasta(.gz)> is ignored.
  type: boolean
  inputBinding:
    prefix: -a
- id: k
  doc: 'Keep working directory (default: delete directory when finished).'
  type: boolean
  inputBinding:
    prefix: -k
- id: r
  doc: Take read groups into account (multi sample mode).
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: Additional parameters to be passed to the CLEVER core algorithm. Call "clever-core"
    without parameters for a list of options.
  type: string
  inputBinding:
    prefix: -C
- id: p
  doc: Additional parameters for postprocessing results. Call "postprocess-predictions"
    without parameters for a list of options.
  type: string
  inputBinding:
    prefix: -P
- id: i
  doc: Create a plot of internal segment size distribution (=fragment size - 2x read
    length). Also displays the estimated normal distribution (requires NumPy and matplotlib).
  type: boolean
  inputBinding:
    prefix: -I
- id: chromosome
  doc: 'Only process given chromosome (default: all).'
  type: string
  inputBinding:
    prefix: --chromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- clever
