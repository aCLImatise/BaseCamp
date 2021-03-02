class: CommandLineTool
id: seqhax_randseq.cwl
inputs:
- id: in_number_reads_use
  doc: Number of reads. Use 0 for infinite. [default 1000]
  type: long?
  inputBinding:
    prefix: -n
- id: in_seed_for_rng
  doc: Seed for RNG.
  type: string?
  inputBinding:
    prefix: -s
- id: in_length_of_read
  doc: Length of each read. [default 100]
  type: long?
  inputBinding:
    prefix: -l
- id: in_paired_reads
  doc: Paired reads [default false]
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_output_fasta_qualities
  doc: Output as fasta (no qualities)
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_seq_hax
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- seqhax
- randseq
