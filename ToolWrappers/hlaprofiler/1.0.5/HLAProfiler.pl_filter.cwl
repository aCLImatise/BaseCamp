class: CommandLineTool
id: HLAProfiler.pl_filter.cwl
inputs:
- id: in_fast_q_one
  doc: '|fq1             read1 fastq.(required)'
  type: boolean?
  inputBinding:
    prefix: -fastq1
- id: in_fast_q_two
  doc: '|fq2             read2 fastq.(required)'
  type: boolean?
  inputBinding:
    prefix: -fastq2
- id: in_output_dir
  doc: '|od          location of output directory. (default:".")'
  type: Directory?
  inputBinding:
    prefix: -output_dir
- id: in_database_dir
  doc: '|dd        location of database directory(default:".")'
  type: boolean?
  inputBinding:
    prefix: -database_dir
- id: in_database_name
  doc: '|db       name of the HLA database to be created(default:hla)'
  type: boolean?
  inputBinding:
    prefix: -database_name
- id: in_kraken_path
  doc: '|kp         base directory of kraken installation. (default:base directory
    of path returned by `which kraken`)'
  type: boolean?
  inputBinding:
    prefix: -kraken_path
- id: in_threads
  doc: '|c              number of threads to uses for processing.(default:1)'
  type: boolean?
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
- id: out_output_dir
  doc: '|od          location of output directory. (default:".")'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints: []
cwlVersion: v1.1
baseCommand:
- HLAProfiler.pl
- filter
