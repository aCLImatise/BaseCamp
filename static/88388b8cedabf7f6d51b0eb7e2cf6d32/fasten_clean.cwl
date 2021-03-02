class: CommandLineTool
id: fasten_clean.cwl
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
- id: in_min_length
  doc: Minimum length for each read in bp
  type: long?
  inputBinding:
    prefix: --min-length
- id: in_min_avg_quality
  doc: Minimum average quality for each read
  type: double?
  inputBinding:
    prefix: --min-avg-quality
- id: in_min_trim_quality
  doc: "Trim the edges of each read until a nucleotide of at\nleast X quality is found\n"
  type: long?
  inputBinding:
    prefix: --min-trim-quality
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- fasten_clean
