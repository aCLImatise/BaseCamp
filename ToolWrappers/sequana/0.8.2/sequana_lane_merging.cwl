class: CommandLineTool
id: sequana_lane_merging.cwl
inputs:
- id: in_output_directory
  doc: Where to store the new fastq files
  type: Directory?
  inputBinding:
    prefix: --output-directory
- id: in_pattern
  doc: "pattern for the input fastq files. Use quotes if\nwildcards are used"
  type: string?
  inputBinding:
    prefix: --pattern
- id: in_threads
  doc: number of threads per job (pigz)
  type: long?
  inputBinding:
    prefix: --threads
- id: in_queue
  doc: queue to use on the cluster
  type: string?
  inputBinding:
    prefix: --queue
- id: in_dry_run
  doc: just createt the script but do not launch them
  type: string[]
  inputBinding:
    prefix: --dry-run
- id: in_se_quan_a_lane_fusion
  doc: "This searches for data stored in this format:\n<sampleID_1>/*fastq.gz\n<sampleID_2>/*fastq.gz\n\
    <sampleID_3>/*fastq.gz"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: Where to store the new fastq files
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_directory)
hints: []
cwlVersion: v1.1
baseCommand:
- sequana_lane_merging
