class: CommandLineTool
id: rbt_collapse_reads_to_fragments_bam.cwl
inputs:
- id: in_verbose_read_names
  doc: "Add list of reads that were merged for each consensus read. Note that this\
    \ can yield\nvery long FASTQ name lines which cannot be handled by some tools."
  type: boolean?
  inputBinding:
    prefix: --verbose-read-names
- id: in_max_seq_dist
  doc: "Maximum hamming distance between the sequences of any pair of reads in the\
    \ same\ncluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]"
  type: long?
  inputBinding:
    prefix: --max-seq-dist
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
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- bam
