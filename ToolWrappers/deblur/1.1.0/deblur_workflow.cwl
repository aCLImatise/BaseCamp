class: CommandLineTool
id: deblur_workflow.cwl
inputs:
- id: in_seqs_fp
  doc: "Either a Demultiplexed FASTA or FASTQ file\nincluding all samples, or a directory\
    \ of\nper-sample FASTA or FASTQ files. Gzip'd\nfiles are acceptable (e.g., .fastq.gz).\n\
    [required]"
  type: File?
  inputBinding:
    prefix: --seqs-fp
- id: in_output_dir
  doc: "Directory path to store output including\nBIOM table  [required]"
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_trim_length
  doc: "Sequence trim length. All reads shorter than\nthe trim-length will be discarded.\
    \ A value\nof -1 can be specified to skip trimming;\nthis assumes all sequences\
    \ have an identical\nlength.  [required]"
  type: long?
  inputBinding:
    prefix: --trim-length
- id: in_left_trim_length
  doc: "Trim the first N bases from every sequence.\nA value of 0 disables this trim.\
    \  [default:\n0]"
  type: long?
  inputBinding:
    prefix: --left-trim-length
- id: in_pos_ref_fp
  doc: "Positive reference filtering database. Keep\nall sequences permissively aligning\
    \ to any\nsequence in this FASTA file; these results\nare stored in the reference-hit.biom\
    \ output\nfile. This defaults to the Greengenes 13_8\nOTUs at 88% identity. An\
    \ e-value threshold\nof 10 is used with SortMeRNA against the\nreference. For\
    \ multiple databases, specify\nthe argument multiple times, e.g., --pos-\nref-fp\
    \ db1.fa --pos-ref-fp db2.fa"
  type: File?
  inputBinding:
    prefix: --pos-ref-fp
- id: in_pos_ref_db_fp
  doc: "An indexed version of the positive filtering\ndatabase. This can be useful\
    \ to avoid\nincurring the expense of reindexing on every\nrun. If not supplied,\
    \ deblur will index the\ndatabase. For multiple databases, the order\nmust follow\
    \ that of --pos-ref-fp, for\nexample, --pos-ref-db-fp db1.idx --pos-ref-\ndb-fp\
    \ db2.idx .."
  type: File?
  inputBinding:
    prefix: --pos-ref-db-fp
- id: in_neg_ref_fp
  doc: "Negative (artifacts) filtering database.\nDrop all sequences which align to\
    \ any record\nin this FASTA file. This defaults to a\ndatabase composed of multiple\
    \ PhiX genomes\nand known Illumina adapters. For multiple\ndatabases, specify\
    \ the argument mutiple\ntimes, e.g., --neg-ref-fp db1.fa --neg-ref-\nfp db2.fa"
  type: File?
  inputBinding:
    prefix: --neg-ref-fp
- id: in_neg_ref_db_fp
  doc: "An indexed version of the negative filtering\ndatabase. If not supplied, deblur\
    \ will index\nthe database.For multiple databases, the\norder must follow that\
    \ of --neg-ref-fp, for\nexample, --neg-ref-db-fp db1.idx --neg-ref-\ndb-fp db2.idx\
    \ .."
  type: File?
  inputBinding:
    prefix: --neg-ref-db-fp
- id: in_overwrite
  doc: "Overwrite output directory if exists.\n[default: False]"
  type: Directory?
  inputBinding:
    prefix: --overwrite
- id: in_mean_error
  doc: "The mean per nucleotide error rate, used for\noriginal sequence estimate.\
    \ If not passed\ntypical illumina error rate is used.\n[default: 0.005]"
  type: double?
  inputBinding:
    prefix: --mean-error
- id: in_error_dist
  doc: "A comma separated list of error\nprobabilities for each Hamming distance.\
    \ The\nlength of the list determines the number of\nHamming distances taken into\
    \ account.\n[default: 1, 0.06, 0.02, 0.02, 0.01, 0.005,\n0.005, 0.005, 0.001,\
    \ 0.001, 0.001, 0.0005]"
  type: long?
  inputBinding:
    prefix: --error-dist
- id: in_in_del_prob
  doc: "Insertion/deletion (indel) probability. This\nprobability consistent for multiple\
    \ indels;\nthere is not an added elongation penalty.\n[default: 0.01]"
  type: double?
  inputBinding:
    prefix: --indel-prob
- id: in_in_del_max
  doc: "Maximum number of allowed indels.  [default:\n3]"
  type: long?
  inputBinding:
    prefix: --indel-max
- id: in_min_reads
  doc: "Keep only the sequences which appear at\nleast min-reads study wide (as opposed\
    \ to\nper-sample).  [default: 10]"
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_min_size
  doc: "Keep only sequences which appear at least\nmin-size times per-sample (as opposed\
    \ to\nstudy wide).  [default: 2]"
  type: long?
  inputBinding:
    prefix: --min-size
- id: in_threads_per_sample
  doc: "Number of threads to use per sample (0 to\nuse all)  [default: 1]"
  type: long?
  inputBinding:
    prefix: --threads-per-sample
- id: in_keep_tmp_files
  doc: "Keep temporary files (useful for debugging)\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --keep-tmp-files
- id: in_log_level
  doc: "RANGE       Level of messages for log file(range 1-debug\nto 5-critical  [default:\
    \ 2]"
  type: long?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: 'log file name  [default: deblur.log]'
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_jobs_to_start
  doc: "Number of jobs to start (if to run in\nparallel)  [default: 1]"
  type: long?
  inputBinding:
    prefix: --jobs-to-start
- id: in_is_worker_thread
  doc: "indicates this is not the main deblur\nprocess (used by the parallel deblur\
    \ - do\nnot use manually)  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --is-worker-thread
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: "Directory path to store output including\nBIOM table  [required]"
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_pos_ref_fp
  doc: "Positive reference filtering database. Keep\nall sequences permissively aligning\
    \ to any\nsequence in this FASTA file; these results\nare stored in the reference-hit.biom\
    \ output\nfile. This defaults to the Greengenes 13_8\nOTUs at 88% identity. An\
    \ e-value threshold\nof 10 is used with SortMeRNA against the\nreference. For\
    \ multiple databases, specify\nthe argument multiple times, e.g., --pos-\nref-fp\
    \ db1.fa --pos-ref-fp db2.fa"
  type: File?
  outputBinding:
    glob: $(inputs.in_pos_ref_fp)
- id: out_overwrite
  doc: "Overwrite output directory if exists.\n[default: False]"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints: []
cwlVersion: v1.1
baseCommand:
- deblur
- workflow
