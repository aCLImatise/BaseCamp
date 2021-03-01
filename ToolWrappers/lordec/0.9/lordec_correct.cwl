class: CommandLineTool
id: lordec_correct.cwl
inputs:
- id: in_short_reads
  doc: <short read FASTA/Q file(s)>
  type: File?
  inputBinding:
    prefix: --short_reads
- id: in_corrected_read_file
  doc: '|solid_threshold <solid k-mer abundance threshold>'
  type: long?
  inputBinding:
    prefix: --corrected_read_file
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- lordec-correct
