class: CommandLineTool
id: deblur_workflow.cwl
inputs:
- id: seqs_fp
  doc: Either a Demultiplexed FASTA or FASTQ file including all samples, or a directory
    of per-sample FASTA or FASTQ files. Gzip'd files are acceptable (e.g., .fastq.gz).
    [required]
  type: File
  inputBinding:
    prefix: --seqs-fp
- id: output_dir
  doc: Directory path to store output including BIOM table  [required]
  type: File
  inputBinding:
    prefix: --output-dir
- id: trim_length
  doc: Sequence trim length. All reads shorter than the trim-length will be discarded.
    A value of -1 can be specified to skip trimming; this assumes all sequences have
    an identical length.  [required]
  type: long
  inputBinding:
    prefix: --trim-length
- id: left_trim_length
  doc: 'Trim the first N bases from every sequence. A value of 0 disables this trim.  [default:
    0]'
  type: long
  inputBinding:
    prefix: --left-trim-length
- id: pos_ref_fp
  doc: Positive reference filtering database. Keep all sequences permissively aligning
    to any sequence in this FASTA file; these results are stored in the reference-hit.biom
    output file. This defaults to the Greengenes 13_8 OTUs at 88% identity. An e-value
    threshold of 10 is used with SortMeRNA against the reference. For multiple databases,
    specify the argument multiple times, e.g., --pos- ref-fp db1.fa --pos-ref-fp db2.fa
  type: File
  inputBinding:
    prefix: --pos-ref-fp
- id: pos_ref_db_fp
  doc: An indexed version of the positive filtering database. This can be useful to
    avoid incurring the expense of reindexing on every run. If not supplied, deblur
    will index the database. For multiple databases, the order must follow that of
    --pos-ref-fp, for example, --pos-ref-db-fp db1.idx --pos-ref- db-fp db2.idx ..
  type: File
  inputBinding:
    prefix: --pos-ref-db-fp
- id: neg_ref_fp
  doc: Negative (artifacts) filtering database. Drop all sequences which align to
    any record in this FASTA file. This defaults to a database composed of multiple
    PhiX genomes and known Illumina adapters. For multiple databases, specify the
    argument mutiple times, e.g., --neg-ref-fp db1.fa --neg-ref- fp db2.fa
  type: File
  inputBinding:
    prefix: --neg-ref-fp
- id: neg_ref_db_fp
  doc: An indexed version of the negative filtering database. If not supplied, deblur
    will index the database.For multiple databases, the order must follow that of
    --neg-ref-fp, for example, --neg-ref-db-fp db1.idx --neg-ref- db-fp db2.idx ..
  type: File
  inputBinding:
    prefix: --neg-ref-db-fp
- id: overwrite
  doc: 'Overwrite output directory if exists. [default: False]'
  type: boolean
  inputBinding:
    prefix: --overwrite
- id: mean_error
  doc: 'The mean per nucleotide error rate, used for original sequence estimate. If
    not passed typical illumina error rate is used. [default: 0.005]'
  type: double
  inputBinding:
    prefix: --mean-error
- id: error_dist
  doc: 'A comma separated list of error probabilities for each Hamming distance. The
    length of the list determines the number of Hamming distances taken into account.
    [default: 1, 0.06, 0.02, 0.02, 0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001,
    0.0005]'
  type: string
  inputBinding:
    prefix: --error-dist
- id: in_del_prob
  doc: 'Insertion/deletion (indel) probability. This probability consistent for multiple
    indels; there is not an added elongation penalty. [default: 0.01]'
  type: double
  inputBinding:
    prefix: --indel-prob
- id: in_del_max
  doc: 'Maximum number of allowed indels.  [default: 3]'
  type: long
  inputBinding:
    prefix: --indel-max
- id: min_reads
  doc: 'Keep only the sequences which appear at least min-reads study wide (as opposed
    to per-sample).  [default: 10]'
  type: long
  inputBinding:
    prefix: --min-reads
- id: min_size
  doc: 'Keep only sequences which appear at least min-size times per-sample (as opposed
    to study wide).  [default: 2]'
  type: long
  inputBinding:
    prefix: --min-size
- id: threads_per_sample
  doc: 'Number of threads to use per sample (0 to use all)  [default: 1]'
  type: long
  inputBinding:
    prefix: --threads-per-sample
- id: keep_tmp_files
  doc: 'Keep temporary files (useful for debugging) [default: False]'
  type: boolean
  inputBinding:
    prefix: --keep-tmp-files
- id: log_level
  doc: 'RANGE       Level of messages for log file(range 1-debug to 5-critical  [default:
    2]'
  type: long
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: 'log file name  [default: deblur.log]'
  type: File
  inputBinding:
    prefix: --log-file
- id: jobs_to_start
  doc: 'Number of jobs to start (if to run in parallel)  [default: 1]'
  type: long
  inputBinding:
    prefix: --jobs-to-start
- id: is_worker_thread
  doc: 'indicates this is not the main deblur process (used by the parallel deblur
    - do not use manually)  [default: False]'
  type: boolean
  inputBinding:
    prefix: --is-worker-thread
outputs: []
cwlVersion: v1.1
baseCommand:
- deblur
- workflow
