class: CommandLineTool
id: buildFastaIndex.rb.cwl
inputs:
- id: in_fast_a_file
  doc: => FASTA sequence file
  type: boolean?
  inputBinding:
    prefix: --fastaFile
- id: in_f_of_file
  doc: => list of fasta files
  type: boolean?
  inputBinding:
    prefix: --fofFile
- id: in_offset_file
  doc: => FASTA index files
  type: boolean?
  inputBinding:
    prefix: --offsetFile
- id: in_sequence_file
  doc: => file containing concatenated nucleotide sequence
  type: boolean?
  inputBinding:
    prefix: --sequenceFile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- buildFastaIndex.rb
