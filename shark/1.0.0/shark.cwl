class: CommandLineTool
id: shark.cwl
inputs:
- id: out1
  doc: 'first output sample in FASTQ (default: sharked_sample.1)'
  type: boolean
  inputBinding:
    prefix: --out1
- id: out2
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
outputs: []
cwlVersion: v1.1
baseCommand:
- shark
