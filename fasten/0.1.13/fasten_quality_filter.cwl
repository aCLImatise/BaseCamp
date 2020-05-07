class: CommandLineTool
id: fasten_quality_filter.cwl
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
- id: max_quality
  doc: The maximum quality at which a base will be transformed to 'N'
  type: long
  inputBinding:
    prefix: --max-quality
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_quality_filter
