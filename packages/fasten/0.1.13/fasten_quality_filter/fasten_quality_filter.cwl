class: CommandLineTool
id: fasten_quality_filter.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_max_quality
  doc: "The maximum quality at which a base will be\ntransformed to 'N'\n"
  type: long
  inputBinding:
    prefix: --max-quality
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- fasten_quality_filter
