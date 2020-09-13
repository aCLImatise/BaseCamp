class: CommandLineTool
id: ../../../lordec_correct.cwl
inputs:
- id: in_long_reads
  doc: ''
  type: File
  inputBinding:
    prefix: --long_reads
- id: in_short_reads
  doc: <short read FASTA/Q file(s)>
  type: boolean
  inputBinding:
    prefix: --short_reads
- id: in_km_er_len
  doc: ''
  type: long
  inputBinding:
    prefix: --kmer_len
- id: in_corrected_read_file
  doc: ''
  type: File
  inputBinding:
    prefix: --corrected_read_file
- id: in_solidthreshold_solid_kmer
  doc: '|solid_threshold <solid k-mer abundance threshold>'
  type: boolean
  inputBinding:
    prefix: -s
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_corrected_read_file
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_corrected_read_file)
cwlVersion: v1.1
baseCommand:
- lordec-correct
