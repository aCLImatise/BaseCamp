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
    Boolean? overwrite
    Float? mean_error
    String? error_dist
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
      ~{true="--overwrite" false="" overwrite} \
      ~{if defined(mean_error) then ("--mean-error " +  '"' + mean_error + '"') else ""} \
      ~{if defined(error_dist) then ("--error-dist " +  '"' + error_dist + '"') else ""} \
      ~{if defined(in_del_prob) then ("--indel-prob " +  '"' + in_del_prob + '"') else ""} \
      ~{if defined(in_del_max) then ("--indel-max " +  '"' + in_del_max + '"') else ""} \
      ~{if defined(min_reads) then ("--min-reads " +  '"' + min_reads + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(threads_per_sample) then ("--threads-per-sample " +  '"' + threads_per_sample + '"') else ""} \
      ~{true="--keep-tmp-files" false="" keep_tmp_files} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(jobs_to_start) then ("--jobs-to-start " +  '"' + jobs_to_start + '"') else ""} \
      ~{true="--is-worker-thread" false="" is_worker_thread}
  >>>
  parameter_meta {
    seqs_fp: "Either a Demultiplexed FASTA or FASTQ file including all samples, or a directory of per-sample FASTA or FASTQ files. Gzip'd files are acceptable (e.g., .fastq.gz). [required]"
    output_dir: "Directory path to store output including BIOM table  [required]"
    trim_length: "Sequence trim length. All reads shorter than the trim-length will be discarded. A value of -1 can be specified to skip trimming; this assumes all sequences have an identical length.  [required]"
    left_trim_length: "Trim the first N bases from every sequence. A value of 0 disables this trim.  [default: 0]"
    pos_ref_fp: "Positive reference filtering database. Keep all sequences permissively aligning to any sequence in this FASTA file; these results are stored in the reference-hit.biom output file. This defaults to the Greengenes 13_8 OTUs at 88% identity. An e-value threshold of 10 is used with SortMeRNA against the reference. For multiple databases, specify the argument multiple times, e.g., --pos- ref-fp db1.fa --pos-ref-fp db2.fa"
    pos_ref_db_fp: "An indexed version of the positive filtering database. This can be useful to avoid incurring the expense of reindexing on every run. If not supplied, deblur will index the database. For multiple databases, the order must follow that of --pos-ref-fp, for example, --pos-ref-db-fp db1.idx --pos-ref- db-fp db2.idx .."
    neg_ref_fp: "Negative (artifacts) filtering database. Drop all sequences which align to any record in this FASTA file. This defaults to a database composed of multiple PhiX genomes and known Illumina adapters. For multiple databases, specify the argument mutiple times, e.g., --neg-ref-fp db1.fa --neg-ref- fp db2.fa"
    neg_ref_db_fp: "An indexed version of the negative filtering database. If not supplied, deblur will index the database.For multiple databases, the order must follow that of --neg-ref-fp, for example, --neg-ref-db-fp db1.idx --neg-ref- db-fp db2.idx .."
    overwrite: "Overwrite output directory if exists. [default: False]"
    mean_error: "The mean per nucleotide error rate, used for original sequence estimate. If not passed typical illumina error rate is used. [default: 0.005]"
    error_dist: "A comma separated list of error probabilities for each Hamming distance. The length of the list determines the number of Hamming distances taken into account. [default: 1, 0.06, 0.02, 0.02, 0.01, 0.005, 0.005, 0.005, 0.001, 0.001, 0.001, 0.0005]"
    in_del_prob: "Insertion/deletion (indel) probability. This probability consistent for multiple indels; there is not an added elongation penalty. [default: 0.01]"
    in_del_max: "Maximum number of allowed indels.  [default: 3]"
    min_reads: "Keep only the sequences which appear at least min-reads study wide (as opposed to per-sample).  [default: 10]"
    min_size: "Keep only sequences which appear at least min-size times per-sample (as opposed to study wide).  [default: 2]"
    threads_per_sample: "Number of threads to use per sample (0 to use all)  [default: 1]"
    keep_tmp_files: "Keep temporary files (useful for debugging) [default: False]"
    log_level: "RANGE       Level of messages for log file(range 1-debug to 5-critical  [default: 2]"
    log_file: "log file name  [default: deblur.log]"
    jobs_to_start: "Number of jobs to start (if to run in parallel)  [default: 1]"
    is_worker_thread: "indicates this is not the main deblur process (used by the parallel deblur - do not use manually)  [default: False]"
  }
}