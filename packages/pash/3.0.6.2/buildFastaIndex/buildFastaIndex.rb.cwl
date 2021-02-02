class: CommandLineTool
id: buildFastaIndex.rb.cwl
inputs:
- id: in_fast_a_file
  doc: '|-r   => FASTA sequence file'
  type: boolean
  inputBinding:
    prefix: --fastaFile
- id: in_f_of_file
  doc: '|-f   => list of fasta files'
  type: boolean
  inputBinding:
    prefix: --fofFile
- id: in_offset_file
  doc: '|-o   => FASTA index files'
  type: boolean
  inputBinding:
    prefix: --offsetFile
- id: in_sequence_file
  doc: '|-s   => file containing concatenated nucleotide sequence'
  type: boolean
  inputBinding:
    prefix: --sequenceFile
- id: in_o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- buildFastaIndex.rb
