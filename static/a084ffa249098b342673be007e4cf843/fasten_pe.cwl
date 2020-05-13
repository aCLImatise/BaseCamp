class: CommandLineTool
id: fasten_pe.cwl
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
- id: print_reads
  doc: Print each read. Useful for Unix pipes.
  type: boolean
  inputBinding:
    prefix: --print-reads
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_pe
