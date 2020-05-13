class: CommandLineTool
id: rbt_collapse_reads_to_fragments_bam.cwl
inputs:
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: options
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: bam
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: consensus_bam
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: reads
  doc: of equal length
  type: string
  inputBinding:
    prefix: '- Reads'
- id: reads
  doc: marked by Picard Tools
  type: string
  inputBinding:
    prefix: '- Reads'
- id: verbose_read_names
  doc: Add list of reads that were merged for each consensus read. Note that this
    can yield very long FASTQ name lines which cannot be handled by some tools.
  type: boolean
  inputBinding:
    prefix: --verbose-read-names
- id: max_seq_dist
  doc: 'Maximum hamming distance between the sequences of any pair of reads in the
    same cluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]'
  type: long
  inputBinding:
    prefix: --max-seq-dist
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- bam
