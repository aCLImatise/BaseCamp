class: CommandLineTool
id: fasten_metrics.cwl
inputs:
- id: in_num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long?
  inputBinding:
    prefix: --numcpus
- id: in_paired_end
  doc: The input reads are interleaved paired-end
  type: boolean?
  inputBinding:
    prefix: --paired-end
- id: in_verbose
  doc: Print more status messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_each_read
  doc: "Print the metrics for each read. This creates very\nlarge output"
  type: boolean?
  inputBinding:
    prefix: --each-read
- id: in_distribution
  doc: "Print the distribution for each metric. Must supply\neither 'normal' or 'nonparametric'\n"
  type: string?
  inputBinding:
    prefix: --distribution
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasten_metrics
