class: CommandLineTool
id: chimChe.cwl
inputs:
- id: in_multifasta_sequences_analyzed
  doc: multi-fasta sequences to be analyzed
  type: string?
  inputBinding:
    prefix: -q
- id: in_multifasta_sequences_indexed
  doc: multi-fasta sequences to be indexed (if missing, -q file used)
  type: File?
  inputBinding:
    prefix: -d
- id: in_size_substrings_default
  doc: the size of the substrings; <= 14, default 10
  type: long?
  inputBinding:
    prefix: -k
- id: in_gives_number_skip
  doc: gives the number of bp to skip between segmentation tests
  type: long?
  inputBinding:
    prefix: -g
- id: in_specifies_smallest_overlap
  doc: specifies smallest overlap to be used
  type: long?
  inputBinding:
    prefix: -m
- id: in_full_deflines_printed
  doc: full deflines to be printed
  type: string?
  inputBinding:
    prefix: -f
- id: in_best_simple_best
  doc: best simple, best left and best right to be trimmed to the same window, to
    reduce partial-sequence artifacts
  type: string?
  inputBinding:
    prefix: -t
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- chimChe
