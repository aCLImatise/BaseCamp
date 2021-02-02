version 1.0

task Fastqdumporig2108 {
  input {
    File? accession
    String? table
    Boolean? split_spot
    String? min_spot_id
    String? max_spot_id
    Boolean? spot_groups
    Boolean? clip
    Int? min_read_len
    Boolean? read_filter
    Boolean? qual_filter
    Boolean? qual_filter_one
    Boolean? aligned
    Boolean? unaligned
    Boolean? aligned_region
    String? mate_pair_distance
    Boolean? skip_technical
    Directory? outdir
    Boolean? stdout
    Boolean? gzip
    Boolean? split_files
    Boolean? split_three
    Boolean? spot_group
    Boolean? group_in_dirs
    Boolean? keep_empty_files
    Boolean? dump_cs
    Boolean? dump_base
    Int? offset
    Boolean? fast_a
    Boolean? suppress_qual_for_cs_key
    Boolean? orig_fmt
    Boolean? read_ids
    Boolean? h_elicos
    String? def_line_seq
    Int? def_line_qual
    File? ngc
    Boolean? disable_multithreading
    Int? log_level
    Boolean? verbose
    Boolean? ncbi_error_report
    Boolean? legacy_report
    String recommended
  }
  command <<<
    fastq_dump_orig_2_10_8 \
      ~{recommended} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (split_spot) then "--split-spot" else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""} \
      ~{if (spot_groups) then "--spot-groups" else ""} \
      ~{if (clip) then "--clip" else ""} \
      ~{if defined(min_read_len) then ("--minReadLen " +  '"' + min_read_len + '"') else ""} \
      ~{if (read_filter) then "--read-filter" else ""} \
      ~{if (qual_filter) then "--qual-filter" else ""} \
      ~{if (qual_filter_one) then "--qual-filter-1" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if (aligned_region) then "--aligned-region" else ""} \
      ~{if defined(mate_pair_distance) then ("--matepair-distance " +  '"' + mate_pair_distance + '"') else ""} \
      ~{if (skip_technical) then "--skip-technical" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (split_files) then "--split-files" else ""} \
      ~{if (split_three) then "--split-3" else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (group_in_dirs) then "--group-in-dirs" else ""} \
      ~{if (keep_empty_files) then "--keep-empty-files" else ""} \
      ~{if (dump_cs) then "--dumpcs" else ""} \
      ~{if (dump_base) then "--dumpbase" else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (suppress_qual_for_cs_key) then "--suppress-qual-for-cskey" else ""} \
      ~{if (orig_fmt) then "--origfmt" else ""} \
      ~{if (read_ids) then "--readids" else ""} \
      ~{if (h_elicos) then "--helicos" else ""} \
      ~{if defined(def_line_seq) then ("--defline-seq " +  '"' + def_line_seq + '"') else ""} \
      ~{if defined(def_line_qual) then ("--defline-qual " +  '"' + def_line_qual + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (ncbi_error_report) then "--ncbi_error_report" else ""} \
      ~{if (legacy_report) then "--legacy-report" else ""}
  >>>
  parameter_meta {
    accession: "Replaces accession derived from <path> in\\nfilename(s) and deflines (only for single\\ntable dump)"
    table: "Table name within cSRA object, default is\\n\\\"SEQUENCE\\\""
    split_spot: "Split spots into individual reads"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
    spot_groups: "<[list]>           Filter by SPOT_GROUP (member): name[,...]"
    clip: "Remove adapter sequences from reads"
    min_read_len: "Filter by sequence length >= <len>"
    read_filter: "<[filter]>      Split into files by READ_FILTER value\\noptionally filter by value:\\npass|reject|criteria|redacted"
    qual_filter: "Filter used in early 1000 Genomes data: no\\nsequences starting or ending with >= 10N"
    qual_filter_one: "Filter used in current 1000 Genomes data"
    aligned: "Dump only aligned sequences"
    unaligned: "Dump only unaligned sequences"
    aligned_region: "<name[:from-to]>  Filter by position on genome. Name can\\neither be accession.version (ex:\\nNC_000001.10) or file specific name (ex:\\n\\\"chr1\\\" or \\\"1\\\"). \\\"from\\\" and \\\"to\\\" are 1-based\\ncoordinates"
    mate_pair_distance: "Filter by distance between matepairs.\\nUse \\\"unknown\\\" to find matepairs split\\nbetween the references. Use from-to to limit\\nmatepair distance on the same reference"
    skip_technical: "Dump only biological reads"
    outdir: "Output directory, default is working\\ndirectory '.' )"
    stdout: "Output to stdout, all split data become\\njoined into single stream"
    gzip: "Compress output using gzip: deprecated, not"
    split_files: "Write reads into separate files. Read\\nnumber will be suffixed to the file name.\\nNOTE! The `--split-3` option is recommended.\\nIn cases where not all spots have the same\\nnumber of reads, this option will produce\\nfiles that WILL CAUSE ERRORS in most programs\\nwhich process split pair fastq files."
    split_three: "3-way splitting for mate-pairs. For each\\nspot, if there are two biological reads\\nsatisfying filter conditions, the first is\\nplaced in the `*_1.fastq` file, and the\\nsecond is placed in the `*_2.fastq` file. If\\nthere is only one biological read\\nsatisfying the filter conditions, it is\\nplaced in the `*.fastq` file.All other\\nreads in the spot are ignored."
    spot_group: "Split into files by SPOT_GROUP (member name)"
    group_in_dirs: "Split into subdirectories instead of files"
    keep_empty_files: "Do not delete empty files"
    dump_cs: "<[cskey]>            Formats sequence using color space (default\\nfor SOLiD),\\\"cskey\\\" may be specified for\\ntranslation"
    dump_base: "Formats sequence using base space (default\\nfor other than SOLiD)."
    offset: "Offset to use for quality conversion,\\ndefault is 33"
    fast_a: "<[line width]>           FASTA only, no qualities, optional line\\nwrap width (set to zero for no wrapping)"
    suppress_qual_for_cs_key: "suppress quality-value for cskey"
    orig_fmt: "Defline contains only original sequence name"
    read_ids: "Append read id after spot id as\\n'accession.spot.readid' on defline"
    h_elicos: "Helicos style defline"
    def_line_seq: "Defline format specification for sequence."
    def_line_qual: "Defline format specification for quality.\\n<fmt> is string of characters and/or\\nvariables. The variables can be one of: $ac\\n- accession, $si spot id, $sn spot\\nname, $sg spot group (barcode), $sl spot\\nlength in bases, $ri read number, $rn\\nread name, $rl read length in bases. '[]'\\ncould be used for an optional output: if\\nall vars in [] yield empty values whole\\ngroup is not printed. Empty value is empty\\nstring or for numeric variables. Ex:\\n@$sn[_$rn]/$ri '_$rn' is omitted if name\\nis empty"
    ngc: "<path> to ngc file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string One\\nof (fatal|sys|int|err|warn|info) or (0-5)\\nCurrent/default is warn"
    verbose: "Increase the verbosity level of the program\\nUse multiple times for more verbosity"
    ncbi_error_report: "Control program execution environment\\nreport generation (if implemented). One of\\n(never|error|always). Default is error"
    legacy_report: "use legacy style 'Written spots' for tool"
    recommended: "--bzip2                          Compress output using bzip2: deprecated, "
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}