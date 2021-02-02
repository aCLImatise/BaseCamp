version 1.0

task HisatgenotypeExtractReadspy {
  input {
    File? base_fname
    Directory? read_dir
    Directory? out_dir
    File? suffix
    Boolean? fast_a
    File? filename_singleend_reads
    Int? one
    Int? two
    String? database_list
    Boolean? simulation
    Int? threads
    Int? threads_a_process
    Int? max_sample
    Int? job_range
    Int? aligner
    Boolean? extract_whole
    Boolean? verbose
  }
  command <<<
    hisatgenotype_extract_reads_py \
      ~{if defined(base_fname) then ("--base-fname " +  '"' + base_fname + '"') else ""} \
      ~{if defined(read_dir) then ("--read-dir " +  '"' + read_dir + '"') else ""} \
      ~{if defined(out_dir) then ("--out-dir " +  '"' + out_dir + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if defined(filename_singleend_reads) then ("-U " +  '"' + filename_singleend_reads + '"') else ""} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(database_list) then ("--database-list " +  '"' + database_list + '"') else ""} \
      ~{if (simulation) then "--simulation" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(threads_a_process) then ("--threads-aprocess " +  '"' + threads_a_process + '"') else ""} \
      ~{if defined(max_sample) then ("--max-sample " +  '"' + max_sample + '"') else ""} \
      ~{if defined(job_range) then ("--job-range " +  '"' + job_range + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if (extract_whole) then "--extract-whole" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    base_fname: "base filename for genotype genome"
    read_dir: "Directory name for read files"
    out_dir: "Directory name for extracted read files"
    suffix: "Read file suffix (Default: fq.gz)"
    fast_a: "FASTA format"
    filename_singleend_reads: "filename for single-end reads"
    one: "filename for paired-end reads"
    two: "filename for paired-end reads"
    database_list: "A comma-separated list of database (default: empty)"
    simulation: "Simulated reads (Default: False)"
    threads: "Number of threads"
    threads_a_process: "Number of threads a process"
    max_sample: "Number of samples to be extracted (default:\\nsys.maxint)"
    job_range: "two numbers (e.g. 1,3)"
    aligner: "Aligner (default: hisat2)"
    extract_whole: "Extract all reads"
    verbose: "also print some statistics to stderr"
  }
  output {
    File out_stdout = stdout()
  }
}