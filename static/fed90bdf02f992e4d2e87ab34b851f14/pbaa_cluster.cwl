class: CommandLineTool
id: pbaa_cluster.cwl
inputs:
- id: in_filter
  doc: INT    Low coverage kmer count cutoff. Automatically adjusted by min-var-frequency.
    [3]
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_trim_ends
  doc: INT    Number of bases to trim from both sides of reads during graph construction.
    [20]
  type: boolean?
  inputBinding:
    prefix: --trim-ends
- id: in_min_var_frequency
  doc: FLOAT  Minimum variant frequency. [0.05]
  type: boolean?
  inputBinding:
    prefix: --min-var-frequency
- id: in_fixed_cluster_count
  doc: INT    Maximum number of clusters per locus/guide-group. [10]
  type: boolean?
  inputBinding:
    prefix: --fixed-cluster-count
- id: in_em_iterations
  doc: INT    Number of iterations to run expectation maximization. [300]
  type: boolean?
  inputBinding:
    prefix: --em-iterations
- id: in_no_cluster_by_length
  doc: Disable fallback length clustering if no variants were discovered.
  type: boolean?
  inputBinding:
    prefix: --no-cluster-by-length
- id: in_min_cluster_frequency
  doc: FLOAT  Low frequency cluster cutoff. [0.1]
  type: boolean?
  inputBinding:
    prefix: --min-cluster-frequency
- id: in_min_cluster_read_count
  doc: INT    Low read count cluster cutoff. [5]
  type: boolean?
  inputBinding:
    prefix: --min-cluster-read-count
- id: in_max_consensus_reads
  doc: INT    Maximum number of reads to use per cluster consensus. [100]
  type: boolean?
  inputBinding:
    prefix: --max-consensus-reads
- id: in_off_target_groups
  doc: STR    Group names to exclude, i.e. these loci are off-target (not amplified).
  type: boolean?
  inputBinding:
    prefix: --off-target-groups
- id: in_max_amplicon_size
  doc: INT    Upper read length cutoff, longer reads will be skipped. [15000]
  type: boolean?
  inputBinding:
    prefix: --max-amplicon-size
- id: in_min_read_qv
  doc: FLOAT  Low read QV cutoff. [20]
  type: boolean?
  inputBinding:
    prefix: --min-read-qv
- id: in_num_threads
  doc: INT    Number of threads to use, 0 means autodetection. [0]
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: 'STR    Set log level. Valid choices: (TRACE, DEBUG, INFO, WARN, FATAL). [WARN]'
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_prefix
  doc: STR    Output prefix for run.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbaa:0.1.4--0
cwlVersion: v1.1
baseCommand:
- pbaa
- cluster
