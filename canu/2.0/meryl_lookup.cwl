class: CommandLineTool
id: meryl_lookup.cwl
inputs:
- id: seqname
  doc: '- name of the sequence this kmer is from'
  type: string
  inputBinding:
    position: 0
- id: seq_id
  doc: '- numeric version of the seqName (0-based)'
  type: string
  inputBinding:
    position: 1
- id: seq_pos
  doc: '- start position (0-based) of the kmer in the sequence'
  type: string
  inputBinding:
    position: 2
- id: exists
  doc: "- 'T' if the kmer exists in the database, 'F' if it does not"
  type: string
  inputBinding:
    position: 3
- id: fwd_mer
  doc: '- forward mer sequence'
  type: string
  inputBinding:
    position: 4
- id: fwd_val
  doc: '- value of the forward mer in the database'
  type: string
  inputBinding:
    position: 5
- id: rev_mer
  doc: '- reverse mer sequence'
  type: string
  inputBinding:
    position: 6
- id: rev_val
  doc: '- value of the reverse mer in the database'
  type: string
  inputBinding:
    position: 7
- id: seqname
  doc: '- name of the sequence this kmer is from'
  type: string
  inputBinding:
    position: 0
- id: sequence
  doc: '[<input2.fasta>] \'
  type: string
  inputBinding:
    prefix: -sequence
- id: output
  doc: <output1>      [<output2>]
  type: boolean
  inputBinding:
    prefix: -output
- id: mers
  doc: <input1.meryl> [<input2.meryl>] [...] \
  type: boolean
  inputBinding:
    prefix: -mers
- id: labels
  doc: <input1name>   [<input2name>]   [...]
  type: boolean
  inputBinding:
    prefix: -labels
- id: min
  doc: m    Ignore kmers with value below m
  type: boolean
  inputBinding:
    prefix: -min
- id: max
  doc: m    Ignore kmers with value above m
  type: boolean
  inputBinding:
    prefix: -max
- id: threads
  doc: Number of threads to use when constructing lookup table.
  type: string
  inputBinding:
    prefix: -threads
- id: memory
  doc: Don't use more than m GB memory
  type: string
  inputBinding:
    prefix: -memory
- id: include
  doc: / -exclude
  type: boolean
  inputBinding:
    prefix: -include
outputs: []
cwlVersion: v1.1
baseCommand:
- meryl-lookup
