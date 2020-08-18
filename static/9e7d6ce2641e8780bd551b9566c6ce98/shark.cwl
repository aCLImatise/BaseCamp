class: CommandLineTool
id: ../../../shark.cwl
inputs:
- id: reference
  doc: reference sequences in FASTA format (can be gzipped)
  type: boolean
  inputBinding:
    prefix: --reference
- id: sample_one
  doc: sample in FASTQ (can be gzipped)
  type: boolean
  inputBinding:
    prefix: --sample1
- id: sample_two
  doc: second sample in FASTQ (optional, can be gzipped)
  type: boolean
  inputBinding:
    prefix: --sample2
- id: out_one
  doc: 'first output sample in FASTQ (default: sharked_sample.1)'
  type: boolean
  inputBinding:
    prefix: --out1
- id: out_two
  doc: 'second output sample in FASTQ (default: sharked_sample.2)'
  type: boolean
  inputBinding:
    prefix: --out2
- id: km_er_size
  doc: size of the kmers to index (default:17, max:31)
  type: boolean
  inputBinding:
    prefix: --kmer-size
- id: confidence
  doc: confidence for associating a read to a gene (default:0.6)
  type: boolean
  inputBinding:
    prefix: --confidence
- id: bf_size
  doc: bloom filter size in GB (default:1)
  type: boolean
  inputBinding:
    prefix: --bf-size
- id: min_base_quality
  doc: minimum base quality (assume FASTQ Illumina 1.8+ Phred scale, default:0, i.e.,
    no filtering)
  type: boolean
  inputBinding:
    prefix: --min-base-quality
- id: single
  doc: report an association only if a single gene is found
  type: boolean
  inputBinding:
    prefix: --single
- id: threads
  doc: number of threads (default:1)
  type: boolean
  inputBinding:
    prefix: --threads
- id: verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- shark
