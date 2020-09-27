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
    Int? max_depth
    Int? files_zero_from
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
  }
  command <<<
    du \
      ~{if (null) then "--null" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (apparent_size) then "--apparent-size" else ""} \
      ~{if defined(block_size) then ("--block-size " +  '"' + block_size + '"') else ""} \
      ~{if (bytes) then "--bytes" else ""} \
      ~{if (total) then "--total" else ""} \
      ~{if (dereference_args) then "--dereference-args" else ""} \
      ~{if defined(max_depth) then ("--max-depth " +  '"' + max_depth + '"') else ""} \
      ~{if defined(files_zero_from) then ("--files0-from " +  '"' + files_zero_from + '"') else ""} \
      ~{if (equivalent__dereferenceargs) then "-H" else ""} \
      ~{if (inodes) then "--inodes" else ""} \
      ~{if (like__blocksizek) then "-k" else ""} \
      ~{if (dereference) then "--dereference" else ""} \
      ~{if (count_links) then "--count-links" else ""} \
      ~{if (like__blocksizem) then "-m" else ""} \
      ~{if (no_dereference) then "--no-dereference" else ""} \
      ~{if (separate_dirs) then "--separate-dirs" else ""} \
      ~{if (si) then "--si" else ""} \
      ~{if (summarize) then "--summarize" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(time_style) then ("--time-style " +  '"' + time_style + '"') else ""} \
      ~{if defined(exclude_from) then ("--exclude-from " +  '"' + exclude_from + '"') else ""} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (one_file_system) then "--one-file-system" else ""}
  >>>
  parameter_meta {
    null: "end each output line with NUL, not newline"
    all: "write counts for all files, not just directories"
    apparent_size: "print apparent sizes, rather than disk usage; although\\nthe apparent size is usually smaller, it may be\\nlarger due to holes in ('sparse') files, internal\\nfragmentation, indirect blocks, and the like"
    block_size: "scale sizes by SIZE before printing them; e.g.,\\n'-BM' prints sizes in units of 1,048,576 bytes;\\nsee SIZE format below"
    bytes: "equivalent to '--apparent-size --block-size=1'"
    total: "produce a grand total"
    dereference_args: "dereference only symlinks that are listed on the\\ncommand line"
    max_depth: "print the total for a directory (or file, with --all)\\nonly if it is N or fewer levels below the command\\nline argument;  --max-depth=0 is the same as\\n--summarize"
    files_zero_from: "summarize disk usage of the\\nNUL-terminated file names specified in file F;\\nif F is -, then read names from standard input"
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
    threshold: "exclude entries smaller than SIZE if positive,\\nor entries greater than SIZE if negative"
    time_style: "show times using STYLE, which can be:\\nfull-iso, long-iso, iso, or +FORMAT;\\nFORMAT is interpreted like in 'date'"
    exclude_from: "exclude files that match any pattern in FILE"
    exclude: "exclude files that match PATTERN"
    one_file_system: "skip directories on different file systems"
  }
  output {
    File out_stdout = stdout()
  }
}