class: CommandLineTool
id: HLAProfiler.pl_count_reads.cwl
inputs:
- id: in_reads_directory
  doc: location of directory containing filtered read fastqs. Please make sure to
    filter files using HLAProfiler.pl filter before counting (required)
  type: boolean
  inputBinding:
    prefix: -reads_directory
- id: in_sample_name
  doc: '|sn         name of the sample. This must perfect match the prefix of each
    of the read count files. i.e. The sample name for file NA12878.200.B_1.uniq.cnt
    would be NA12878.200 (required)'
  type: boolean
  inputBinding:
    prefix: -sample_name
- id: in_output_directory
  doc: '|od    location of directory containing filtered read fastqs. Please make
    sure to filter files using HLAProfiler.pl filter before counting (default:-reads_directory)'
  type: boolean
  inputBinding:
    prefix: -output_directory
- id: in_threads
  doc: '|c              number of threads to uses for processing.(default:1)'
  type: boolean
  inputBinding:
    prefix: -threads
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- count_reads
