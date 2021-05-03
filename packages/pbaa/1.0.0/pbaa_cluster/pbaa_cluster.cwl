class: CommandLineTool
id: pbaa_cluster.cwl
inputs:
- id: in_filter
  doc: "INT    Variants with coverage lower than filter\nwill be ignored. [3]"
  type: boolean?
  inputBinding:
    prefix: --filter
- id: in_trim_ends
  doc: "INT    Number of bases to trim from both sides of\nreads during graph construction\
    \ and variant\ndetection. [5]"
  type: boolean?
  inputBinding:
    prefix: --trim-ends
- id: in_pile_size
  doc: "INT    The number of best alignments to keep for\neach read during error correction.\
    \ [30]"
  type: boolean?
  inputBinding:
    prefix: --pile-size
- id: in_min_var_frequency
  doc: "FLOAT  Minimum coverage frequency within a pile.\n[0.3]"
  type: boolean?
  inputBinding:
    prefix: --min-var-frequency
- id: in_max_alignments_per_read
  doc: "INT    The number of random alignments, for each\nread, within a guide grouping\
    \ [1000]"
  type: boolean?
  inputBinding:
    prefix: --max-alignments-per-read
- id: in_max_reads_per_guide
  doc: "INT    The number randomly selected reads to use\nwithin a guide grouping.\
    \ [500]"
  type: boolean?
  inputBinding:
    prefix: --max-reads-per-guide
- id: in_iterations
  doc: INT    Number of iterations to run k-means. [9]
  type: boolean?
  inputBinding:
    prefix: --iterations
- id: in_seed
  doc: INT    Randomization seed. [1984]
  type: boolean?
  inputBinding:
    prefix: --seed
- id: in_max_consensus_reads
  doc: "INT    Maximum number of reads to use per cluster\nconsensus. [100]"
  type: boolean?
  inputBinding:
    prefix: --max-consensus-reads
- id: in_max_amplicon_size
  doc: "INT    Upper read length cutoff, longer reads will\nbe skipped. [15000]"
  type: boolean?
  inputBinding:
    prefix: --max-amplicon-size
- id: in_min_read_qv
  doc: FLOAT  Low read QV cutoff. [20]
  type: boolean?
  inputBinding:
    prefix: --min-read-qv
- id: in_off_target_groups
  doc: "STR    Group names to exclude, i.e. these loci are\noff-target (not amplified)."
  type: boolean?
  inputBinding:
    prefix: --off-target-groups
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
- id: in_max_u_chime_score
  doc: FLOAT  High UCHIME score cutoff. [1]
  type: boolean?
  inputBinding:
    prefix: --max-uchime-score
- id: in_num_threads
  doc: "INT    Number of threads to use, 0 means\nautodetection. [0]"
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR    Set log level. Valid choices: (TRACE,\nDEBUG, INFO, WARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: FILE   Log to a file, instead of stderr.
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_files_dot
  doc: prefix                     STR    Output prefix for run.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbaa:1.0.0--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- pbaa
- cluster
