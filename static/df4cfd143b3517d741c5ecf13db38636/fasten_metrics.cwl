class: CommandLineTool
id: fasten_metrics.cwl
inputs:
- id: num_cpus
  doc: 'Number of CPUs (default: 1)'
  type: long
  inputBinding:
    prefix: --numcpus
- id: paired_end
  doc: The input reads are interleaved paired-end
  type: boolean
  inputBinding:
    prefix: --paired-end
- id: verbose
  doc: Print more status messages
  type: boolean
  inputBinding:
    prefix: --verbose
- id: each_read
  doc: Print the metrics for each read. This creates very large output
  type: boolean
  inputBinding:
    prefix: --each-read
- id: distribution
  doc: Print the distribution for each metric. Must supply either 'normal' or 'nonparametric'
  type: string
  inputBinding:
    prefix: --distribution
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_metrics
