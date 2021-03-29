version 1.0

task Fasterqdump2108 {
  input {
    File? outfile
    File? outdir
    Int? bufsize
    Int? cur_cache
    Int? mem
    File? temp
    Int? threads
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
    Int? min_read_len
    String? table
    Boolean? strict
    String? filter_output_given
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Int? log_level
    File? option_file
    String append_outputfile_instead
    File file_dot
  }
  command <<<
    fasterq_dump_2_10_8 \
      ~{append_outputfile_instead} \
      ~{file_dot} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if defined(bufsize) then ("--bufsize " +  '"' + bufsize + '"') else ""} \
      ~{if defined(cur_cache) then ("--curcache " +  '"' + cur_cache + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
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
      ~{if defined(min_read_len) then ("--min-read-len " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (strict) then "--strict" else ""} \
      ~{if defined(filter_output_given) then ("--bases " +  '"' + filter_output_given + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "full path of outputfile (overrides usage\\nof current directory and given accession)"
    outdir: "path for outputfile (overrides usage of\\ncurrent directory, but uses given\\naccession)"
    bufsize: "size of file-buffer (dflt=1MB, takes\\nnumber or number and unit)"
    cur_cache: "size of cursor-cache (dflt=10MB, takes\\nnumber or number and unit)"
    mem: "memory limit for sorting (dflt=100MB,\\ntakes number or number and unit)"
    temp: "path to directory for temp. files\\n(dflt=current dir.)"
    threads: "how many threads to use (dflt=6)"
    progress: "show progress (not possible if stdout used)"
    details: "print details of all options selected"
    split_spot: "split spots into reads"
    split_files: "write reads into different files"
    split_three: "writes single reads into special file"
    concatenate_reads: "writes whole spots into one file"
    stdout: "print output to stdout"
    force: "force overwrite of existing file(s)"
    rowid_as_name: "use rowid as name (avoids using the name\\ncolumn)"
    skip_technical: "skip technical reads"
    include_technical: "explicitly include technical reads"
    print_read_nr: "include read-number in defline"
    min_read_len: "filter by sequence-lenght"
    table: "which seq-table to use in case of pacbio"
    strict: "terminate on invalid read"
    filter_output_given: "filter output by matching against given"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    append_outputfile_instead: "-A|--append                      append to output-file, instead of"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
  }
}