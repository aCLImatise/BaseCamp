class: CommandLineTool
id: nthits.cwl
inputs:
- id: in_threads
  doc: use N parallel threads [16]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_km_er
  doc: the length of kmer [64]
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_cut_off
  doc: the maximum coverage of kmer in output
  type: string?
  inputBinding:
    prefix: --cutoff
- id: in_pref
  doc: the prefix for output file name [repeat]
  type: File?
  inputBinding:
    prefix: --pref
- id: in_out_bloom
  doc: output the most frequent k-mers in a Bloom filter
  type: boolean?
  inputBinding:
    prefix: --outbloom
- id: in_solid
  doc: output the solid k-mers (non-errornous k-mers)
  type: boolean?
  inputBinding:
    prefix: --solid
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_pref
  doc: the prefix for output file name [repeat]
  type: File?
  outputBinding:
    glob: $(inputs.in_pref)
hints: []
cwlVersion: v1.1
baseCommand:
- nthits
