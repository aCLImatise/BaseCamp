version 1.0

task Rmsk2starchtypical {
  input {
    Boolean? i_fmtgenomic_format
    File? o_fmtformat_bed
    Boolean? do_not_sort
    Int? max_mem
    Int? sort_tmpdir
    Boolean? starch_bzip_two
    Boolean? starch_gzip
    Boolean? starch_note
  }
  command <<<
    rmsk2starch_typical \
      ~{if (i_fmtgenomic_format) then "--input" else ""} \
      ~{if (o_fmtformat_bed) then "--output" else ""} \
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
    i_fmtgenomic_format: "=[bam|gff|gtf|gvf|psl|rmsk|sam|vcf|wig] (-i <fmt>)\\nGenomic format of input file (required)"
    o_fmtformat_bed: "=[bed|starch] (-o <fmt>)\\nFormat of output file, either BED or BEDOPS Starch (optional, default is BED)"
    do_not_sort: "(-d)\\nDo not sort BED output with sort-bed (not compatible with --output=starch)"
    max_mem: "(-m <val>)\\nSets aside <value> memory for sorting BED output. For example, <value> can\\nbe 8G, 8000M or 8000000000 to specify 8 GB of memory (default is 2G)"
    sort_tmpdir: "(-r <dir>)\\nOptionally sets [dir] as temporary directory for sort data, when used in\\nconjunction with --max-mem=[value], instead of the host's operating system\\ndefault temporary directory"
    starch_bzip_two: "(-z)\\nUsed with --output=starch, the compressed output explicitly applies the bzip2\\nalgorithm to compress intermediate data (default is bzip2)"
    starch_gzip: "(-g)\\nUsed with --output=starch, the compressed output applies gzip compression on\\nintermediate data"
    starch_note: "=\\\"xyz...\\\" (-e \\\"xyz...\\\")\\nUsed with --output=starch, this adds a note to the Starch archive metadata"
  }
  output {
    File out_stdout = stdout()
    File out_o_fmtformat_bed = "${in_o_fmtformat_bed}"
  }
}