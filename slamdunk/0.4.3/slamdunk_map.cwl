class: CommandLineTool
id: slamdunk_map.cwl
inputs:
- id: files
  doc: Single csv/tsv file (recommended) containing all sample files and sample info
    or a list of all sample BAM/FASTA(gz)/FASTQ(gz) files
  type: File
  inputBinding:
    position: 0
- id: top_n
  doc: 'Max. number of alignments to report per read (default: 1)'
  type: string
  inputBinding:
    prefix: --topn
- id: max_polya
  doc: "Max number of As at the 3' end of a read. (default: 4)"
  type: long
  inputBinding:
    prefix: --max-polya
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: quant_seq
  doc: 'Run plain Quantseq alignment without SLAM-seq scoring (default: False)'
  type: boolean
  inputBinding:
    prefix: --quantseq
- id: end_to_end
  doc: 'Use a end to end alignment algorithm for mapping. (default: False)'
  type: boolean
  inputBinding:
    prefix: --endtoend
- id: sample_name
  doc: 'Use this sample name for all supplied samples (default: None)'
  type: string
  inputBinding:
    prefix: --sampleName
- id: sample_type
  doc: 'Use this sample type for all supplied samples (default: pulse)'
  type: string
  inputBinding:
    prefix: --sampleType
- id: sample_time
  doc: 'Use this sample time for all supplied samples (default: 0)'
  type: string
  inputBinding:
    prefix: --sampleTime
- id: sample_index
  doc: 'Run analysis only for sample <i>. Use for distributing slamdunk analysis on
    a cluster (index is 1-based). (default: -1)'
  type: string
  inputBinding:
    prefix: --sample-index
- id: skip_sam
  doc: 'Output BAM while mapping. Slower but, uses less hard disk. (default: False)'
  type: boolean
  inputBinding:
    prefix: --skip-sam
outputs: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- map
