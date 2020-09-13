version 1.0

task DeblurWorkflow {
  input {
    File? seqs_fp
    File? output_dir
    Int? trim_length
    Int? left_trim_length
    File? pos_ref_fp
    File? pos_ref_db_fp
    File? neg_ref_fp
    File? neg_ref_db_fp
    Directory? overwrite
    Float? mean_error
    Int? error_dist
    Float? in_del_prob
    Int? in_del_max
    Int? min_reads
    Int? min_size
    Int? threads_per_sample
    Boolean? keep_tmp_files
    Int? log_level
    File? log_file
    Int? jobs_to_start
    Boolean? is_worker_thread
  }
  command <<<
    deblur workflow \
      ~{if defined(seqs_fp) then ("--seqs-fp " +  '"' + seqs_fp + '"') else ""} \
      ~{if defined(output_dir) then ("--output-dir " +  '"' + output_dir + '"') else ""} \
      ~{if defined(trim_length) then ("--trim-length " +  '"' + trim_length + '"') else ""} \
      ~{if defined(left_trim_length) then ("--left-trim-length " +  '"' + left_trim_length + '"') else ""} \
      ~{if defined(pos_ref_fp) then ("--pos-ref-fp " +  '"' + pos_ref_fp + '"') else ""} \
      ~{if defined(pos_ref_db_fp) then ("--pos-ref-db-fp " +  '"' + pos_ref_db_fp + '"') else ""} \
      ~{if defined(neg_ref_fp) then ("--neg-ref-fp " +  '"' + neg_ref_fp + '"') else ""} \
      ~{if defined(neg_ref_db_fp) then ("--neg-ref-db-fp " +  '"' + neg_ref_db_fp + '"') else ""} \
      ~{if (overwrite) then "--overwrite" else ""} \
      ~{if defined(mean_error) then ("--mean-error " +  '"' + mean_error + '"') else ""} \
      ~{if defined(error_dist) then ("--error-dist " +  '"' + error_dist + '"') else ""} \
      ~{if defined(in_del_prob) then ("--indel-prob " +  '"' + in_del_prob + '"') else ""} \
      ~{if defined(in_del_max) then ("--indel-max " +  '"' + in_del_max + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(threads_per_sample) then ("--threads-per-sample " +  '"' + threads_per_sample + '"') else ""} \
      ~{if (keep_tmp_files) then "--keep-tmp-files" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(jobs_to_start) then ("--jobs-to-start " +  '"' + jobs_to_start + '"') else ""} \
      ~{if (is_worker_thread) then "--is-worker-thread" else ""}
  >>>
  parameter_meta {
    seqs_fp: "Either a Demultiplexed FASTA or FASTQ file\\nincluding all samples, or a directory of\\nper-sample FASTA or FASTQ files. Gzip'd\\nfiles are acceptable (e.g., .fastq.gz).\\n[required]"
    output_dir: "Directory path to store output including\\nBIOM table  [required]"
    trim_length: "Sequence trim length. All reads shorter than\\nthe trim-length will be discarded. A value\\nof -1 can be specified to skip trimming;\\nthis assumes all sequences have an identical\\nlength.  [required]"
    left_trim_length: "Trim the first N bases from every sequence.\\nA value of 0 disables this trim.  [default:\\n0]"
    pos_ref_fp: "Positive reference filtering database. Keep\\nall sequences permissively aligning to any\\nsequence in this FASTA file; these results\\nare stored in the reference-hit.biom output\\nfile. This defaults to the Greengenes 13_8\\nOTUs at 88% identity. An e-value threshold\\nof 10 is used with SortMeRNA against the\\nreference. For multiple databases, specify\\nthe argument multiple times, e.g., --pos-\\nref-fp db1.fa --pos-ref-fp db2.fa"
    pos_ref_db_fp: "An indexed version of the positive filtering\\ndatabase. This can be useful to avoid\\nincurring the expense of reindexing on every\\nrun. If not supplied, deblur will index the\\ndatabase. For multiple databases, the order\\nmust follow that of --pos-ref-fp, for\\nexample, --pos-ref-db-fp db1.idx --pos-ref-\\ndb-fp db2.idx .."
    neg_ref_fp: "Negative (artifacts) filtering database.\\nDrop all sequences which align to any record\\nin this FASTA file. This defaults to a\\ndatabase composed of multiple PhiX genomes\\nand known Illumina adapters. For multiple\\ndatabases, specify the argument mutiple\\ntimes, e.g., --neg-ref-fp db1.fa --neg-ref-\\nfp db2.fa"
    neg_ref_db_fp: "An indexed version of the negative filtering\\ndatabase. If not supplied, deblur will index\\nthe database.For multiple databases, the\\norder must follow that of --neg-ref-fp, for\\nexample, --neg-ref-db-fp db1.idx --neg-ref-\\ndb-fp db2.idx .."
    overwrite: "Overwrite output directory if exists.\\n[default: False]"
    mean_error: "The mean per nucleotide error rate, used for\\noriginal sequence estimate. If not passed\\ntypical illumina error rate is used.\\n[default: 0.005]"
    error_dist: "A comma separated list of error\\nprobabilities for each Hamming distance. The\\nlength of the list determines the number of\\nHamming distances taken into account.\\n[default: 1, 0.06, 0.02, 0.02, 0.01, 0.005,\\n0.005, 0.005, 0.001, 0.001, 0.001, 0.0005]"
    in_del_prob: "Insertion/deletion (indel) probability. This\\nprobability consistent for multiple indels;\\nthere is not an added elongation penalty.\\n[default: 0.01]"
    in_del_max: "Maximum number of allowed indels.  [default:\\n3]"
    min_reads: "Keep only the sequences which appear at\\nleast min-reads study wide (as opposed to\\nper-sample).  [default: 10]"
    min_size: "Keep only sequences which appear at least\\nmin-size times per-sample (as opposed to\\nstudy wide).  [default: 2]"
    threads_per_sample: "Number of threads to use per sample (0 to\\nuse all)  [default: 1]"
    keep_tmp_files: "Keep temporary files (useful for debugging)\\n[default: False]"
    log_level: "RANGE       Level of messages for log file(range 1-debug\\nto 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    jobs_to_start: "Number of jobs to start (if to run in\\nparallel)  [default: 1]"
    is_worker_thread: "indicates this is not the main deblur\\nprocess (used by the parallel deblur - do\\nnot use manually)  [default: False]"
  }
  output {
    File out_stdout = stdout()
    File out_output_dir = "${in_output_dir}"
    File out_pos_ref_fp = "${in_pos_ref_fp}"
    Directory out_overwrite = "${in_overwrite}"
  }
}