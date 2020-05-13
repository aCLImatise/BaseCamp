class: CommandLineTool
id: sga_stats.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: sample_rate
  doc: 'use occurrence array sample rate of N in the FM-index. Higher values use significantly
    less memory at the cost of higher runtime. This value must be a power of 2 (default:
    128)'
  type: string
  inputBinding:
    prefix: --sample-rate
- id: km_er_size
  doc: 'The length of the kmer to use. (default: 27)'
  type: string
  inputBinding:
    prefix: --kmer-size
- id: num_reads
  doc: Only use N reads to compute the statistics
  type: string
  inputBinding:
    prefix: --num-reads
- id: branch_cut_off
  doc: stop the overlap search at N branches. This lowers the compute time but will
    bias the statistics away from repetitive reads
  type: string
  inputBinding:
    prefix: --branch-cutoff
- id: run_lengths
  doc: Print the run length distribution of the BWT
  type: boolean
  inputBinding:
    prefix: --run-lengths
- id: km_er_distribution
  doc: Print the distribution of kmer counts
  type: boolean
  inputBinding:
    prefix: --kmer-distribution
- id: no_overlap
  doc: Suppress the overlap-based error statistics (faster if you only want the k-mer
    distribution)
  type: boolean
  inputBinding:
    prefix: --no-overlap
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- stats
