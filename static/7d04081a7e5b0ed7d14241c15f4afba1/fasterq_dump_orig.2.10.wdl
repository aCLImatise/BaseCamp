version 1.0

task FasterqDumpOrig.2.10.7 {
  input {
    Boolean? outfile
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
    Boolean? append
    File? ngc
    String? log_level
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File path
  }
  command <<<
    fasterq-dump-orig.2.10.7 \
      ~{path} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--bufsize" false="" bufsize} \
      ~{true="--curcache" false="" cur_cache} \
      ~{true="--mem" false="" mem} \
      ~{true="--temp" false="" temp} \
      ~{true="--threads" false="" threads} \
      ~{true="--progress" false="" progress} \
      ~{true="--details" false="" details} \
      ~{true="--split-spot" false="" split_spot} \
      ~{true="--split-files" false="" split_files} \
      ~{true="--split-3" false="" split_three} \
      ~{true="--concatenate-reads" false="" concatenate_reads} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--force" false="" force} \
      ~{true="--rowid-as-name" false="" rowid_as_name} \
      ~{true="--skip-technical" false="" skip_technical} \
      ~{true="--include-technical" false="" include_technical} \
      ~{true="--print-read-nr" false="" print_read_nr} \
      ~{true="--min-read-len" false="" min_read_len} \
      ~{true="--table" false="" table} \
      ~{true="--strict" false="" strict} \
      ~{true="--bases" false="" bases} \
      ~{true="--append" false="" append} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    outfile: "output-file "
    outdir: "output-dir "
    bufsize: "size of file-buffer dflt=1MB "
    cur_cache: "size of cursor-cache dflt=10MB "
    mem: "memory limit for sorting dflt=100MB "
    temp: "where to put temp. files dflt=curr dir "
    threads: "how many thread dflt=6 "
    progress: "show progress "
    details: "print details "
    split_spot: "split spots into reads "
    split_files: "write reads into different files "
    split_three: "writes single reads in special file "
    concatenate_reads: "writes whole spots into one file "
    stdout: "print output to stdout "
    force: "force to overwrite existing file(s) "
    rowid_as_name: "use row-id as name "
    skip_technical: "skip technical reads "
    include_technical: "include technical reads "
    print_read_nr: "print read-numbers "
    min_read_len: "filter by sequence-len "
    table: "which seq-table to use in case of pacbio "
    strict: "terminate on invalid read "
    bases: "filter by bases "
    append: "append to output-file "
    ngc: "PATH to ngc file "
    log_level: "Logging level as number or enum string. One  of (fatal|sys|int|err|warn|info|debug) or  (0-6) Current/default is warn "
    verbose: "Increase the verbosity of the program  status messages. Use multiple times for more  verbosity. Negates quiet. "
    quiet: "Turn off all status messages for the  program. Negated by verbose. "
    option_file: "Read more options and parameters from the  file. "
    path: ""
  }
}