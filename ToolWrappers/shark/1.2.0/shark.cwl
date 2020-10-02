class: CommandLineTool
id: shark.cwl
inputs:
- id: in_reference
  doc: reference sequences in FASTA format (can be gzipped)
  type: boolean
  inputBinding:
    prefix: --reference
- id: in_sample_one
  doc: sample in FASTQ (can be gzipped)
  type: boolean
  inputBinding:
    prefix: --sample1
- id: in_sample_two
  doc: second sample in FASTQ (optional, can be gzipped)
  type: boolean
  inputBinding:
    prefix: --sample2
- id: in_out_one
  doc: 'first output sample in FASTQ (default: sharked_sample.1)'
  type: boolean
  inputBinding:
    prefix: --out1
- id: in_out_two
  doc: 'second output sample in FASTQ (default: sharked_sample.2)'
  type: boolean
  inputBinding:
    prefix: --out2
- id: in_km_er_size
  doc: size of the kmers to index (default:17, max:31)
  type: boolean
  inputBinding:
    prefix: --kmer-size
- id: in_confidence
  doc: confidence for associating a read to a gene (default:0.6)
  type: boolean
  inputBinding:
    prefix: --confidence
- id: in_bf_size
  doc: bloom filter size in GB (default:1)
  type: boolean
  inputBinding:
    prefix: --bf-size
- id: in_min_base_quality
  doc: minimum base quality (assume FASTQ Illumina 1.8+ Phred scale, default:0, i.e.,
    no filtering)
  type: boolean
  inputBinding:
    prefix: --min-base-quality
- id: in_single
  doc: report an association only if a single gene is found
  type: boolean
  inputBinding:
    prefix: --single
- id: in_threads
  doc: number of threads (default:1)
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_verbose
  doc: verbose mode
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_optional
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_arguments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- shark
