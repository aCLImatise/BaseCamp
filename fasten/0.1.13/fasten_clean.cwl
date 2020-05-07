class: CommandLineTool
id: fasten_clean.cwl
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
- id: min_length
  doc: Minimum length for each read in bp
  type: long
  inputBinding:
    prefix: --min-length
- id: min_avg_quality
  doc: Minimum average quality for each read
  type: double
  inputBinding:
    prefix: --min-avg-quality
- id: min_trim_quality
  doc: Trim the edges of each read until a nucleotide of at least X quality is found
  type: long
  inputBinding:
    prefix: --min-trim-quality
outputs: []
cwlVersion: v1.1
baseCommand:
- fasten_clean
