class: CommandLineTool
id: rbt_collapse_reads_to_fragments_fastq.cwl
inputs:
- id: in_umi_on_reverse
  doc: Set if UMI is on reverse read
  type: boolean?
  inputBinding:
    prefix: --umi-on-reverse
- id: in_verbose_read_names
  doc: "Add list of reads that were merged for each consensus read. Note that this\
    \ can yield very long FASTQ name\nlines which cannot be handled by some tools."
  type: boolean?
  inputBinding:
    prefix: --verbose-read-names
- id: in_insert_size
  doc: Expected insert size of sequenced fragment (Required for calculating overlapping
    consensus only)
  type: long?
  inputBinding:
    prefix: --insert-size
- id: in_max_seq_dist
  doc: "Maximum hamming distance between the sequences of any pair of reads in the\
    \ same cluster. [default: 2]\n[possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
  type: long?
  inputBinding:
    prefix: --max-seq-dist
- id: in_max_umi_dist
  doc: 'Maximum hamming distance between the UMIs of any pair of reads in the same
    cluster. [default: 1]'
  type: long?
  inputBinding:
    prefix: --max-umi-dist
- id: in_std_dev
  doc: "Standard deviation of expected insert size. Defines search space of the most\
    \ likely overlap. (Required for\ncalculating overlapping consensus only)"
  type: long?
  inputBinding:
    prefix: --std-dev
- id: in_umi_len
  doc: 'Length of UMI in read. [default: 8]'
  type: long?
  inputBinding:
    prefix: --umi-len
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
- id: in_fq_one
  doc: ''
  type: long
  inputBinding:
    position: 1
- id: in_fq_two
  doc: ''
  type: long
  inputBinding:
    position: 2
- id: in_consensus_fq_one
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_consensus_fq_two
  doc: ''
  type: long
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
- fastq
