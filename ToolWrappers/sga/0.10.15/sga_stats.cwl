class: CommandLineTool
id: sga_stats.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_prefix
  doc: 'use PREFIX for the names of the index files (default: prefix of the input
    file)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: 'use NUM threads to compute the overlaps (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sample_rate
  doc: "use occurrence array sample rate of N in the FM-index. Higher values use significantly\n\
    less memory at the cost of higher runtime. This value must be a power of 2 (default:\
    \ 128)"
  type: long?
  inputBinding:
    prefix: --sample-rate
- id: in_km_er_size
  doc: 'The length of the kmer to use. (default: 27)'
  type: long?
  inputBinding:
    prefix: --kmer-size
- id: in_num_reads
  doc: Only use N reads to compute the statistics
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_branch_cut_off
  doc: "stop the overlap search at N branches. This lowers the compute time but will\
    \ bias the statistics\naway from repetitive reads"
  type: string?
  inputBinding:
    prefix: --branch-cutoff
- id: in_run_lengths
  doc: Print the run length distribution of the BWT
  type: boolean?
  inputBinding:
    prefix: --run-lengths
- id: in_km_er_distribution
  doc: Print the distribution of kmer counts
  type: boolean?
  inputBinding:
    prefix: --kmer-distribution
- id: in_no_overlap
  doc: Suppress the overlap-based error statistics (faster if you only want the k-mer
    distribution)
  type: boolean?
  inputBinding:
    prefix: --no-overlap
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- stats
