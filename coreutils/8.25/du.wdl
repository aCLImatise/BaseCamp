version 1.0

task Du {
  input {
    Boolean? null
    Boolean? all
    Boolean? apparent_size
    Int? block_size
    Boolean? bytes
    Boolean? total
    Boolean? dereference_args
    String? max_depth
    String? files_zero_from
    Boolean? equivalent__dereferenceargs
    Boolean? inodes
    Boolean? like__blocksizek
    Boolean? dereference
    Boolean? count_links
    Boolean? like__blocksizem
    Boolean? no_dereference
    Boolean? separate_dirs
    Boolean? si
    Boolean? summarize
    Int? threshold
    String? time_style
    File? exclude_from
    String? exclude
    Boolean? one_file_system
    String? option
  }
  command <<<
    du \
      ~{option} \
      ~{true="--null" false="" null} \
      ~{true="--all" false="" all} \
      ~{true="--apparent-size" false="" apparent_size} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{true="--bytes" false="" bytes} \
      ~{true="--total" false="" total} \
      ~{true="--dereference-args" false="" dereference_args} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{true="-H" false="" equivalent__dereferenceargs} \
      ~{true="--inodes" false="" inodes} \
      ~{true="-k" false="" like__blocksizek} \
      ~{true="--dereference" false="" dereference} \
      ~{true="--count-links" false="" count_links} \
      ~{true="-m" false="" like__blocksizem} \
      ~{true="--no-dereference" false="" no_dereference} \
      ~{true="--separate-dirs" false="" separate_dirs} \
      ~{true="--si" false="" si} \
      ~{true="--summarize" false="" summarize} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(time_style) then ("--time-style " +  '"' + time_style + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude-from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{true="--one-file-system" false="" one_file_system}
  >>>
  parameter_meta {
    null: "end each output line with NUL, not newline"
    all: "write counts for all files, not just directories"
    apparent_size: "print apparent sizes, rather than disk usage; although the apparent size is usually smaller, it may be larger due to holes in ('sparse') files, internal fragmentation, indirect blocks, and the like"
    block_size: "scale sizes by SIZE before printing them; e.g., '-BM' prints sizes in units of 1,048,576 bytes; see SIZE format below"
    bytes: "equivalent to '--apparent-size --block-size=1'"
    total: "produce a grand total"
    dereference_args: "dereference only symlinks that are listed on the command line"
    max_depth: "print the total for a directory (or file, with --all) only if it is N or fewer levels below the command line argument;  --max-depth=0 is the same as --summarize"
    files_zero_from: "summarize disk usage of the NUL-terminated file names specified in file F; if F is -, then read names from standard input"
    equivalent__dereferenceargs: "equivalent to --dereference-args (-D)"
    inodes: "list inode usage information instead of block usage"
    like__blocksizek: "like --block-size=1K"
    dereference: "dereference all symbolic links"
    count_links: "count sizes many times if hard linked"
    like__blocksizem: "like --block-size=1M"
    no_dereference: "don't follow any symbolic links (this is the default)"
    separate_dirs: "for directories do not include size of subdirectories"
    si: "like -h, but use powers of 1000 not 1024"
    summarize: "display only a total for each argument"
    threshold: "exclude entries smaller than SIZE if positive, or entries greater than SIZE if negative"
    time_style: "show times using STYLE, which can be: full-iso, long-iso, iso, or +FORMAT; FORMAT is interpreted like in 'date'"
    exclude_from: "exclude files that match any pattern in FILE"
    exclude: "exclude files that match PATTERN"
    one_file_system: "skip directories on different file systems"
    option: ""
  }
}