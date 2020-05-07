class: CommandLineTool
id: rbt_collapse_reads_to_fragments_fastq.cwl
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
- id: fq1
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: fq2
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: consensus_fq1
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: consensus_fq2
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: consensus_fq3
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: reads
  doc: of equal length
  type: string
  inputBinding:
    prefix: '- Reads'
- id: umi
  doc: the prefix of the reads
  type: string
  inputBinding:
    prefix: '- UMI'
- id: l
  doc: '13 \                    # length of UMI'
  type: boolean
  inputBinding:
    prefix: -l
- id: d
  doc: '1 \                     # max hamming distance of UMIs within a cluster'
  type: boolean
  inputBinding:
    prefix: -d
- id: d
  doc: '2 \                     # max hamming distance of sequences within a cluster'
  type: boolean
  inputBinding:
    prefix: -D
- id: umi_on_reverse
  doc: '# UMI is the prefix of the reverse read'
  type: boolean
  inputBinding:
    prefix: --umi-on-reverse
- id: umi_on_reverse
  doc: Set if UMI is on reverse read
  type: boolean
  inputBinding:
    prefix: --umi-on-reverse
- id: verbose_read_names
  doc: Add list of reads that were merged for each consensus read. Note that this
    can yield very long FASTQ name lines which cannot be handled by some tools.
  type: boolean
  inputBinding:
    prefix: --verbose-read-names
- id: insert_size
  doc: Expected insert size of sequenced fragment (Required for calculating overlapping
    consensus only)
  type: string
  inputBinding:
    prefix: --insert-size
- id: max_seq_dist
  doc: 'Maximum hamming distance between the sequences of any pair of reads in the
    same cluster. [default: 2]  [possible values: 1, 2, 3, 4, 5, 6, 7, 8]'
  type: long
  inputBinding:
    prefix: --max-seq-dist
- id: max_umi_dist
  doc: 'Maximum hamming distance between the UMIs of any pair of reads in the same
    cluster. [default: 1]'
  type: long
  inputBinding:
    prefix: --max-umi-dist
- id: std_dev
  doc: Standard deviation of expected insert size. Defines search space of the most
    likely overlap. (Required for calculating overlapping consensus only)
  type: string
  inputBinding:
    prefix: --std-dev
- id: umi_len
  doc: 'Length of UMI in read. [default: 8]'
  type: string
  inputBinding:
    prefix: --umi-len
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- fastq
