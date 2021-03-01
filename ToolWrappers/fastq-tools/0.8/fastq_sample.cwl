class: CommandLineTool
id: fastq_sample.cwl
inputs:
- id: in_number_reads_sample
  doc: 'the number of reads to sample (default: 10000)'
  type: long?
  inputBinding:
    prefix: -n
- id: in_proportion_total_reads
  doc: the proportion of the total reads to sample
  type: string?
  inputBinding:
    prefix: -p
- id: in_output
  doc: output file prefix
  type: File?
  inputBinding:
    prefix: --output
- id: in_with_replacement
  doc: sample with replacement
  type: boolean?
  inputBinding:
    prefix: --with-replacement
- id: in_seed
  doc: a manual seed to the random number generator
  type: long?
  inputBinding:
    prefix: --seed
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- fastq-sample
