class: CommandLineTool
id: ../../../rbt_collapse_reads_to_fragments_fastq.cwl
inputs:
- id: _length_umi
  doc: '\                    # length of UMI'
  type: string
  inputBinding:
    prefix: -l
- id: max_hamming_distance_umis
  doc: '\                     # max hamming distance of UMIs within a cluster'
  type: string
  inputBinding:
    prefix: -d
- id: max_hamming_distance_sequences
  doc: '\                     # max hamming distance of sequences within a cluster'
  type: string
  inputBinding:
    prefix: -D
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
- id: flags
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: fq_one
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: fq_two
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: consensus_fq_one
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: consensus_fq_two
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: consensus_fq_three
  doc: ''
  type: string
  inputBinding:
    position: 5
outputs: []
cwlVersion: v1.1
baseCommand:
- rbt
- collapse-reads-to-fragments
- fastq
