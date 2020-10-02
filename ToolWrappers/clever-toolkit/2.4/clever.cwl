class: CommandLineTool
id: clever.cwl
inputs:
- id: in_sorted
  doc: "Input BAM file is sorted by position. Note that this\nrequires alternative\
    \ alignments to be given as XA tags\n(like produced by BWA, stampy, etc.)."
  type: boolean
  inputBinding:
    prefix: --sorted
- id: in_use_x_a
  doc: "Interprete XA tags in input BAM file. This option\nSHOULD be given for mappers\
    \ writing XA tags like BWA\nand stampy."
  type: boolean
  inputBinding:
    prefix: --use_xa
- id: in_use_mapq
  doc: Use MAPQ value instead re-computing posteriors.
  type: boolean
  inputBinding:
    prefix: --use_mapq
- id: in_number_use_default
  doc: Number of threads to use (default=1).
  type: long
  inputBinding:
    prefix: -T
- id: in_delete_old_result
  doc: "Delete old result and working directory first (if\npresent)."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_working_directory_default
  doc: 'Working directory (default: <result-directory>/work).'
  type: Directory
  inputBinding:
    prefix: -w
- id: in_recompute_as_tags
  doc: "Do not (re-)compute AS tags. If given, the argument\n<ref.fasta(.gz)> is ignored."
  type: boolean
  inputBinding:
    prefix: -a
- id: in_keep_directory_whenfinished
  doc: "Keep working directory (default: delete directory when\nfinished)."
  type: boolean
  inputBinding:
    prefix: -k
- id: in_take_read_groups
  doc: Take read groups into account (multi sample mode).
  type: boolean
  inputBinding:
    prefix: -r
- id: in_additional_parameters_passed
  doc: "Additional parameters to be passed to the CLEVER core\nalgorithm. Call \"\
    clever-core\" without parameters for a\nlist of options."
  type: string
  inputBinding:
    prefix: -C
- id: in_additional_parameters_postprocessing
  doc: "Additional parameters for postprocessing results. Call\n\"postprocess-predictions\"\
    \ without parameters for a\nlist of options."
  type: string
  inputBinding:
    prefix: -P
- id: in_create_plot_read
  doc: "Create a plot of internal segment size distribution\n(=fragment size - 2x\
    \ read length). Also displays the\nestimated normal distribution (requires NumPy\
    \ and\nmatplotlib)."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_chromosome
  doc: "Only process given chromosome (default: all).\n"
  type: string
  inputBinding:
    prefix: --chromosome
- id: in_bam_file
  doc: ''
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- clever
