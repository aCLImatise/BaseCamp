class: CommandLineTool
id: rMETL_realignment.cwl
inputs:
- id: fast_a
  doc: Input potential_ME.fa on STAGE detection.
  type: string
  inputBinding:
    position: 0
- id: me_ref
  doc: The transposable element concensus in fasta format.
  type: string
  inputBinding:
    position: 1
- id: output
  doc: Directory to output realignments.
  type: string
  inputBinding:
    position: 2
- id: threads
  doc: Number of threads to use.[8]
  type: string
  inputBinding:
    prefix: --threads
- id: presets
  doc: The sequencing platform <pacbio,ont> of the reads.[pacbio]
  type: string
  inputBinding:
    prefix: --presets
- id: sub_read_length
  doc: Length of fragments reads are split into [128]
  type: string
  inputBinding:
    prefix: --subread_length
- id: sub_read_corridor
  doc: Length of corridor sub-reads are aligned with [20]
  type: string
  inputBinding:
    prefix: --subread_corridor
outputs: []
cwlVersion: v1.1
baseCommand:
- rMETL
- realignment
