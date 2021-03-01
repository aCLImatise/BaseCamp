class: CommandLineTool
id: wtmer.cwl
inputs:
- id: in_long_reads_file
  doc: Long reads sequences file, + *
  type: File?
  inputBinding:
    prefix: -i
- id: in_output_file_kmerfrequency
  doc: Output file of kmer_frequency, *
  type: File?
  inputBinding:
    prefix: -o
- id: in_force_overwrite
  doc: Force overwrite
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_disable_homopolymer_compression
  doc: Disable homopolymer compression
  type: boolean?
  inputBinding:
    prefix: -H
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file_kmerfrequency
  doc: Output file of kmer_frequency, *
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file_kmerfrequency)
hints: []
cwlVersion: v1.1
baseCommand:
- wtmer
