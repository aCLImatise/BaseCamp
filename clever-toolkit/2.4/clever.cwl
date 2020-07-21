class: CommandLineTool
id: ../../../clever.cwl
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
- id: number_use_default
  doc: Number of threads to use (default=1).
  type: string
  inputBinding:
    prefix: -T
- id: delete_old_result
  doc: Delete old result and working directory first (if present).
  type: boolean
  inputBinding:
    prefix: -f
- id: working_directory_default
  doc: 'Working directory (default: <result-directory>/work).'
  type: string
  inputBinding:
    prefix: -w
- id: recompute_as_tags
  doc: Do not (re-)compute AS tags. If given, the argument <ref.fasta(.gz)> is ignored.
  type: boolean
  inputBinding:
    prefix: -a
- id: keep_default_directory
  doc: 'Keep working directory (default: delete directory when finished).'
  type: boolean
  inputBinding:
    prefix: -k
- id: take_read_groups
  doc: Take read groups into account (multi sample mode).
  type: boolean
  inputBinding:
    prefix: -r
- id: additional_parameters_passed
  doc: Additional parameters to be passed to the CLEVER core algorithm. Call "clever-core"
    without parameters for a list of options.
  type: string
  inputBinding:
    prefix: -C
- id: additional_parameters_postprocessing
  doc: Additional parameters for postprocessing results. Call "postprocess-predictions"
    without parameters for a list of options.
  type: string
  inputBinding:
    prefix: -P
- id: create_plot_internal
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
- id: bam_file
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- clever
