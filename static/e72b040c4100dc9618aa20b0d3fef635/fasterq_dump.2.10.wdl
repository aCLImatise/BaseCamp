version 1.0

task FasterqDump.2.10.7 {
  input {
    File? outfile
    File? outdir
    Int? bufsize
    Int? cur_cache
    Int? mem
    File? temp
    String? threads
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
    String? min_read_len
    String? table
    Boolean? strict
    String? bases
    Boolean? append
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    fasterq-dump.2.10.7 \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(bufsize) then ("--bufsize " +  '"' + bufsize + '"') else ""} \
      ~{if defined(cur_cache) then ("--curcache " +  '"' + cur_cache + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
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
      ~{if defined(min_read_len) then ("--min-read-len " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--strict" false="" strict} \
      ~{if defined(bases) then ("--bases " +  '"' + bases + '"') else ""} \
      ~{true="--append" false="" append} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    outfile: "full path of outputfile (overrides usage of current directory and given accession)"
    outdir: "path for outputfile (overrides usage of current directory, but uses given accession)"
    bufsize: "size of file-buffer (dflt=1MB, takes number or number and unit)"
    cur_cache: "size of cursor-cache (dflt=10MB, takes number or number and unit)"
    mem: "memory limit for sorting (dflt=100MB, takes number or number and unit)"
    temp: "path to directory for temp. files (dflt=current dir.)"
    threads: "how many threads to use (dflt=6)"
    progress: "show progress (not possible if stdout used)"
    details: "print details of all options selected"
    split_spot: "split spots into reads"
    split_files: "write reads into different files"
    split_three: "writes single reads into special file"
    concatenate_reads: "writes whole spots into one file"
    stdout: "print output to stdout"
    force: "force overwrite of existing file(s)"
    rowid_as_name: "use rowid as name (avoids using the name column)"
    skip_technical: "skip technical reads"
    include_technical: "explicitly include technical reads"
    print_read_nr: "include read-number in defline"
    min_read_len: "filter by sequence-lenght"
    table: "which seq-table to use in case of pacbio"
    strict: "terminate on invalid read"
    bases: "filter output by matching against given bases"
    append: "append to output-file, instead of overwriting it"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}