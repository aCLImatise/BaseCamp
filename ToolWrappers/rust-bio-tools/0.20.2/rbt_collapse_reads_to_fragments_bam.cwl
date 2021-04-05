class: CommandLineTool
id: rbt_collapse_reads_to_fragments_bam.cwl
inputs:
- id: in_verbose_read_names
  doc: "Add list of reads that were merged for each consensus read. Note that this\
    \ can yield very long FASTQ name\nlines which cannot be handled by some tools."
  type: boolean?
  inputBinding:
    prefix: --verbose-read-names
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_bam
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_consensus_fq_one
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_consensus_fq_two
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_consensus_fq_se
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rust-bio-tools:0.20.2--heda7bfa_0
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- bam
