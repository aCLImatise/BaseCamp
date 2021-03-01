version 1.0

task Psl2starchtypical {
  input {
    Boolean? keep_header
    Boolean? split
    Boolean? do_not_sort
    Int? max_mem
    Int? sort_tmpdir
    Boolean? starch_bzip_two
    Boolean? starch_gzip
    Boolean? starch_note
  }
  command <<<
    psl2starch_typical \
      ~{if (keep_header) then "--keep-header" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (do_not_sort) then "--do-not-sort" else ""} \
      ~{if defined(max_mem) then ("--max-mem " +  '"' + max_mem + '"') else ""} \
      ~{if defined(sort_tmpdir) then ("--sort-tmpdir " +  '"' + sort_tmpdir + '"') else ""} \
      ~{if (starch_bzip_two) then "--starch-bzip2" else ""} \
      ~{if (starch_gzip) then "--starch-gzip" else ""} \
      ~{if (starch_note) then "--starch-note" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_header: "(-k)\\nPreserve header section as pseudo-BED elements (requires --headered)"
    split: "(-s)\\nSplit record into multiple BED elements, based on tStarts field value"
    do_not_sort: "(-d)\\nDo not sort BED output with sort-bed (not compatible with --output=starch)"
    max_mem: "(-m <val>)\\nSets aside <value> memory for sorting BED output. For example, <value> can\\nbe 8G, 8000M or 8000000000 to specify 8 GB of memory (default is 2G)"
    sort_tmpdir: "(-r <dir>)\\nOptionally sets [dir] as temporary directory for sort data, when used in\\nconjunction with --max-mem=[value], instead of the host's operating system\\ndefault temporary directory"
    starch_bzip_two: "(-z)\\nUsed with --output=starch, the compressed output explicitly applies the bzip2\\nalgorithm to compress intermediate data (default is bzip2)"
    starch_gzip: "(-g)\\nUsed with --output=starch, the compressed output applies gzip compression on\\nintermediate data"
    starch_note: "=\\\"xyz...\\\" (-e \\\"xyz...\\\")\\nUsed with --output=starch, this adds a note to the Starch archive metadata"
  }
  output {
    File out_stdout = stdout()
  }
}