class: CommandLineTool
id: rMETL_realignment.cwl
inputs:
- id: in_threads
  doc: Number of threads to use.[8]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_presets
  doc: "The sequencing platform <pacbio,ont> of the\nreads.[pacbio]"
  type: string?
  inputBinding:
    prefix: --presets
- id: in_sub_read_length
  doc: Length of fragments reads are split into [128]
  type: long?
  inputBinding:
    prefix: --subread_length
- id: in_sub_read_corridor
  doc: "Length of corridor sub-reads are aligned with [20]\n"
  type: long?
  inputBinding:
    prefix: --subread_corridor
- id: in_t_jiang_at_hit_dot_edu_dot_cn
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_fast_a
  doc: Input potential_ME.fa on STAGE detection.
  type: string
  inputBinding:
    position: 1
- id: in_me_ref
  doc: The transposable element concensus in fasta format.
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: Directory to output realignments.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rMETL
- realignment
