class: CommandLineTool
id: extractChromLengths.rb.cwl
inputs:
- id: in_fast_a_file
  doc: '|-r   => FASTA sequence file'
  type: boolean
  inputBinding:
    prefix: --fastaFile
- id: in_output_file
  doc: '|-o   => FASTA index files'
  type: boolean
  inputBinding:
    prefix: --outputFile
- id: in_r
  doc: ''
  type: string
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- extractChromLengths.rb
