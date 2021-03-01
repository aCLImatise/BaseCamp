class: CommandLineTool
id: vulcan.cwl
inputs:
- id: in_work_dir
  doc: 'Directory of work, store temp files, default: ./vulcan_work'
  type: Directory?
  inputBinding:
    prefix: --work_dir
- id: in_threads
  doc: 'threads, default: 1'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_percentile
  doc: 'percentile of cut-off, default: 90'
  type: string[]
  inputBinding:
    prefix: --percentile
- id: in_full
  doc: keep all temp file
  type: boolean?
  inputBinding:
    prefix: --full
- id: in_dry
  doc: only generate config
  type: boolean?
  inputBinding:
    prefix: --dry
- id: in_raw_edit_distance
  doc: Use raw edit distance to do the cut-off
  type: boolean?
  inputBinding:
    prefix: --raw_edit_distance
- id: in_pac_bio_clr
  doc: Input reads is pacbio CLR reads
  type: boolean?
  inputBinding:
    prefix: --pacbio_clr
- id: in_pac_bio_hifi
  doc: Input reads is pacbio hifi reads
  type: boolean?
  inputBinding:
    prefix: --pacbio_hifi
- id: in_nano_pore
  doc: Input reads is Nanopore reads
  type: boolean?
  inputBinding:
    prefix: --nanopore
- id: in_any_long_read
  doc: Don't know which kind of long read
  type: boolean?
  inputBinding:
    prefix: --anylongread
- id: in_human_clr
  doc: Human pacbio CLR read
  type: boolean?
  inputBinding:
    prefix: --humanclr
- id: in_human_hifi
  doc: Human pacbio hifi reads
  type: boolean?
  inputBinding:
    prefix: --humanhifi
- id: in_human_nano_pore
  doc: Human Nanopore reads
  type: boolean?
  inputBinding:
    prefix: --humannanopore
- id: in_custom_cmd
  doc: Use minimap2 and NGMLR with user's own parameter setting
  type: boolean?
  inputBinding:
    prefix: --custom_cmd
- id: in_input
  doc: input read path, can accept multiple files
  type: string[]
  inputBinding:
    prefix: --input
- id: in_reference
  doc: reference path
  type: File?
  inputBinding:
    prefix: --reference
- id: in_output
  doc: "vulcan's output's prefix, the output will be prefix_{percentile}.bam\n"
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/vulcan:1.0.2--0
cwlVersion: v1.1
baseCommand:
- vulcan
