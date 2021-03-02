class: CommandLineTool
id: seqhax_convert.cwl
inputs:
- id: in_output_fasta
  doc: Output FASTA.
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_output_fastq_adding
  doc: Output FASTQ (adding qualities).
  type: boolean?
  inputBinding:
    prefix: -q
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqhax
- convert
