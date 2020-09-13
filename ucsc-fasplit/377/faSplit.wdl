version 1.0

task FaSplit {
  input {
    Int? verbose
    Int? max_n
    Boolean? one_file
    Int? extra
    Int? out
    File? lift
    Int? min_gap_size
    Boolean? no_gap_drops
    Int? outdir_depth
    Int? prefix_length
    String how
    String input_dot_fa
    String count
  }
  command <<<
    faSplit \
      ~{how} \
      ~{input_dot_fa} \
      ~{count} \
      ~{if defined(verbose) then ("-verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(max_n) then ("-maxN " +  '"' + max_n + '"') else ""} \
      ~{if (one_file) then "-oneFile" else ""} \
      ~{if defined(extra) then ("-extra " +  '"' + extra + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(lift) then ("-lift " +  '"' + lift + '"') else ""} \
      ~{if defined(min_gap_size) then ("-minGapSize " +  '"' + min_gap_size + '"') else ""} \
      ~{if (no_gap_drops) then "-noGapDrops" else ""} \
      ~{if defined(outdir_depth) then ("-outDirDepth " +  '"' + outdir_depth + '"') else ""} \
      ~{if defined(prefix_length) then ("-prefixLength " +  '"' + prefix_length + '"') else ""}
  >>>
  parameter_meta {
    verbose: "- Write names of each file created (=3 more details)"
    max_n: "- Suppress pieces with more than maxN n's.  Only used with size.\\ndefault is size-1 (only suppresses pieces that are all N)."
    one_file: "- Put output in one file. Only used with size"
    extra: "- Add N extra bytes at the end to form overlapping pieces.  Only used with size."
    out: "Get masking from outfile.  Only used with size."
    lift: "Put info on how to reconstruct sequence from\\npieces in file.lft.  Only used with size and gap."
    min_gap_size: "Consider a block of Ns to be a gap if block size >= X.\\nDefault value 1000.  Only used with gap."
    no_gap_drops: "- include all N's when splitting by gap."
    outdir_depth: "Create N levels of output directory under current dir.\\nThis helps prevent NFS problems with a large number of\\nfile in a directory.  Using -outDirDepth=3 would\\nproduce ./1/2/3/outRoot123.fa."
    prefix_length: "- used with byname option. create a separate output\\nfile for each group of sequences names with same prefix\\nof length N.\\n"
    how: ""
    input_dot_fa: ""
    count: ""
  }
  output {
    File out_stdout = stdout()
  }
}