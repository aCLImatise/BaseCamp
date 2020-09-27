class: CommandLineTool
id: meryl.cwl
inputs:
- id: in_print
  doc: display kmers on the screen as 'kmer<tab>count'.  accepts exactly one input.
  type: string
  inputBinding:
    position: 0
- id: in_count
  doc: Count the occurrences of canonical kmers in the input.  must have 'output'
    specified.
  type: string
  inputBinding:
    position: 1
- id: in_count_forward
  doc: Count the occurrences of forward kmers in the input.  must have 'output' specified.
  type: string
  inputBinding:
    position: 2
- id: in_count_reverse
  doc: "Count the occurrences of reverse kmers in the input.  must have 'output' specified.\n\
    k=<K>              create mers of size K bases (mandatory).\nn=<N>           \
    \   expect N mers in the input (optional; for precise memory sizing).\nmemory=M\
    \           use no more than (about) M GB memory.\nthreads=T          use no more\
    \ than T threads."
  type: string
  inputBinding:
    position: 3
- id: in_union
  doc: return kmers that occur in any input, set the count to the number of inputs
    with this kmer.
  type: string
  inputBinding:
    position: 0
- id: in_union_min
  doc: return kmers that occur in any input, set the count to the minimum count
  type: long
  inputBinding:
    position: 1
- id: in_union_max
  doc: return kmers that occur in any input, set the count to the maximum count
  type: long
  inputBinding:
    position: 2
- id: in_union_sum
  doc: return kmers that occur in any input, set the count to the sum of the counts
  type: string
  inputBinding:
    position: 3
- id: in_intersect
  doc: return kmers that occur in all inputs, set the count to the count in the first
    input.
  type: string
  inputBinding:
    position: 4
- id: in_intersect_min
  doc: return kmers that occur in all inputs, set the count to the minimum count.
  type: long
  inputBinding:
    position: 5
- id: in_intersect_max
  doc: return kmers that occur in all inputs, set the count to the maximum count.
  type: long
  inputBinding:
    position: 6
- id: in_intersect_sum
  doc: return kmers that occur in all inputs, set the count to the sum of the counts.
  type: string
  inputBinding:
    position: 7
- id: in_difference
  doc: return kmers that occur in the first input, but none of the other inputs
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- meryl
