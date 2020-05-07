class: CommandLineTool
id: skesa.cwl
inputs:
- id: v
  doc: '[ --version ]              Print version'
  type: boolean
  inputBinding:
    prefix: -v
- id: cores
  doc: (=0)              Number of cores to use (default all) [integer]
  type: string
  inputBinding:
    prefix: --cores
- id: memory
  doc: (=32)            Memory available (GB, only for sorted counter)  [integer]
  type: string
  inputBinding:
    prefix: --memory
- id: hash_count
  doc: Use hash counter [flag]
  type: boolean
  inputBinding:
    prefix: --hash_count
- id: estimated_km_ers
  doc: (=100)  Estimated number of unique kmers for bloom  filter (M, only for hash
    counter) [integer]
  type: string
  inputBinding:
    prefix: --estimated_kmers
- id: skip_bloom_filter
  doc: Don't do bloom filter; use --estimated_kmers as the hash table size (only for
    hash counter)  [flag]
  type: boolean
  inputBinding:
    prefix: --skip_bloom_filter
- id: fast_a
  doc: Input fasta file(s) (could be used multiple  times for different runs) [string]
  type: string
  inputBinding:
    prefix: --fasta
- id: fast_q
  doc: Input fastq file(s) (could be used multiple  times for different runs) [string]
  type: string
  inputBinding:
    prefix: --fastq
- id: use_paired_ends
  doc: Indicates that a single (not comma separated)  fasta/fastq file contains paired
    reads [flag]
  type: boolean
  inputBinding:
    prefix: --use_paired_ends
- id: contigs_out
  doc: Output file for contigs (stdout if not  specified) [string]
  type: string
  inputBinding:
    prefix: --contigs_out
- id: km_er
  doc: (=21)              Minimal kmer length for assembly [integer]
  type: string
  inputBinding:
    prefix: --kmer
- id: min_count
  doc: Minimal count for kmers retained for comparing  alternate choices [integer]
  type: string
  inputBinding:
    prefix: --min_count
- id: max_km_er_count
  doc: Minimum acceptable average count for estimating the maximal kmer length in
    reads [integer]
  type: string
  inputBinding:
    prefix: --max_kmer_count
- id: vector_percent
  doc: (=0.05)  Count for  vectors as a fraction of the read  number (1. disables)
    [float (0,1]]
  type: string
  inputBinding:
    prefix: --vector_percent
- id: insert_size
  doc: Expected insert size for paired reads (if not  provided, it will be estimated)
    [integer]
  type: string
  inputBinding:
    prefix: --insert_size
- id: steps
  doc: (=11)             Number of assembly iterations from minimal to  maximal kmer
    length in reads [integer]
  type: string
  inputBinding:
    prefix: --steps
- id: fraction
  doc: (=0.1)         Maximum noise to signal ratio acceptable for  extension [float
    [0,1)]
  type: string
  inputBinding:
    prefix: --fraction
- id: max_snp_len
  doc: (=150)      Maximal snp length [integer]
  type: string
  inputBinding:
    prefix: --max_snp_len
- id: min_contig
  doc: (=200)       Minimal contig length reported in output  [integer]
  type: string
  inputBinding:
    prefix: --min_contig
- id: allow_snps
  doc: Allow additional step for snp discovery [flag]
  type: boolean
  inputBinding:
    prefix: --allow_snps
- id: force_single_ends
  doc: Don't use paired-end information [flag]
  type: boolean
  inputBinding:
    prefix: --force_single_ends
- id: seeds
  doc: Input file with seeds [string]
  type: string
  inputBinding:
    prefix: --seeds
- id: all
  doc: Output fasta for each iteration [string]
  type: string
  inputBinding:
    prefix: --all
- id: dbg_out
  doc: Output kmer file [string]
  type: string
  inputBinding:
    prefix: --dbg_out
- id: hist
  doc: File for histogram [string]
  type: string
  inputBinding:
    prefix: --hist
- id: connected_reads
  doc: File for connected paired reads [string]
  type: string
  inputBinding:
    prefix: --connected_reads
outputs: []
cwlVersion: v1.1
baseCommand:
- skesa
