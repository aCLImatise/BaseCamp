class: CommandLineTool
id: metawrap_read_qc.cwl
inputs:
- id: in_forward_fastq_reads
  doc: forward fastq reads
  type: long
  inputBinding:
    prefix: '-1'
- id: in_reverse_fastq_reads
  doc: reverse fastq reads
  type: long
  inputBinding:
    prefix: '-2'
- id: in_output_directory
  doc: output directory
  type: Directory
  inputBinding:
    prefix: -o
- id: in_number_threads_default
  doc: number of threads (default=1)
  type: long
  inputBinding:
    prefix: -t
- id: in_prefix_host_index
  doc: prefix of host index in bmtagger database folder (default=hg38)
  type: Directory
  inputBinding:
    prefix: -x
- id: in_skip_bm_tagger
  doc: dont remove human sequences with bmtagger
  type: boolean
  inputBinding:
    prefix: --skip-bmtagger
- id: in_skip_trimming
  doc: dont trim sequences with trimgalore
  type: boolean
  inputBinding:
    prefix: --skip-trimming
- id: in_skip_pre_qc_report
  doc: dont make FastQC report of input sequences
  type: boolean
  inputBinding:
    prefix: --skip-pre-qc-report
- id: in_skip_post_qc_report
  doc: dont make FastQC report of final sequences
  type: boolean
  inputBinding:
    prefix: --skip-post-qc-report
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_directory
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_directory)
cwlVersion: v1.1
baseCommand:
- metawrap
- read_qc
