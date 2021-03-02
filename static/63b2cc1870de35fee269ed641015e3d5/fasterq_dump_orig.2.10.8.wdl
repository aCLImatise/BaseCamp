version 1.0

task Fasterqdumporig2108 {
  input {
    File? outfile
    Boolean? outdir
    Boolean? bufsize
    Boolean? cur_cache
    Boolean? mem
    Boolean? temp
    Boolean? threads
    Boolean? progress
    Boolean? details
    Boolean? split_spot
    Boolean? split_files
    Boolean? split_three
    Boolean? concatenate_reads
    Boolean? stdout
    Boolean? force
    Boolean? rowid_as_name
    Boolean? skip_technical
    Boolean? include_technical
    Boolean? print_read_nr
    Boolean? min_read_len
    Boolean? table
    Boolean? strict
    Boolean? bases
    File? append
    File? ngc
    Boolean? verbose
    Boolean? quiet
    File? option_file
    String quit_dot
    File file_dot
  }
  command <<<
    fasterq_dump_orig_2_10_8 \
      ~{quit_dot} \
      ~{file_dot} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (bufsize) then "--bufsize" else ""} \
      ~{if (cur_cache) then "--curcache" else ""} \
      ~{if (mem) then "--mem" else ""} \
      ~{if (temp) then "--temp" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (progress) then "--progress" else ""} \
      ~{if (details) then "--details" else ""} \
      ~{if (split_spot) then "--split-spot" else ""} \
      ~{if (split_files) then "--split-files" else ""} \
      ~{if (split_three) then "--split-3" else ""} \
      ~{if (concatenate_reads) then "--concatenate-reads" else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (rowid_as_name) then "--rowid-as-name" else ""} \
      ~{if (skip_technical) then "--skip-technical" else ""} \
      ~{if (include_technical) then "--include-technical" else ""} \
      ~{if (print_read_nr) then "--print-read-nr" else ""} \
      ~{if (min_read_len) then "--min-read-len" else ""} \
      ~{if (table) then "--table" else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if (bases) then "--bases" else ""} \
      ~{if (append) then "--append" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "output-file"
    outdir: "output-dir"
    bufsize: "size of file-buffer dflt=1MB"
    cur_cache: "size of cursor-cache dflt=10MB"
    mem: "memory limit for sorting dflt=100MB"
    temp: "where to put temp. files dflt=curr dir"
    threads: "how many thread dflt=6"
    progress: "show progress"
    details: "print details"
    split_spot: "split spots into reads"
    split_files: "write reads into different files"
    split_three: "writes single reads in special file"
    concatenate_reads: "writes whole spots into one file"
    stdout: "print output to stdout"
    force: "force to overwrite existing file(s)"
    rowid_as_name: "use row-id as name"
    skip_technical: "skip technical reads"
    include_technical: "include technical reads"
    print_read_nr: "print read-numbers"
    min_read_len: "filter by sequence-len"
    table: "which seq-table to use in case of pacbio"
    strict: "terminate on invalid read"
    bases: "filter by bases"
    append: "append to output-file"
    ngc: "PATH to ngc file"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the"
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
    file_dot: "fasterq-dump-orig.2.10.8 : 2.10.8"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
    File out_append = "${in_append}"
  }
}