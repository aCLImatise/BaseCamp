version 1.0

task Fastqdump {
  input {
    File? accession
    String? table
    Boolean? split_spot
    String? min_spot_id
    String? max_spot_id
    Boolean? spot_groups
    Boolean? clip
    Int? min_read_len
    String? read_filter
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
    Boolean? bzip_two
    Boolean? split_files
    Boolean? split_e
    Boolean? spot_group
    Boolean? group_in_dirs
    Boolean? keep_empty_files
    String? dump_cs
    Boolean? dump_base
    Boolean? offset
    Int? fast_a
    Boolean? suppress_qual_for_cs_key
    Boolean? orig_fmt
    Boolean? h_elicos
    String? def_line_seq
    Int? def_line_qual
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    Int? log_level
    File? option_file
    String name
    File file_dot
  }
  command <<<
    fastq_dump \
      ~{name} \
      ~{file_dot} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (split_spot) then "--split-spot" else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""} \
      ~{if (spot_groups) then "--spot-groups" else ""} \
      ~{if (clip) then "--clip" else ""} \
      ~{if defined(min_read_len) then ("--minReadLen " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(read_filter) then ("--read-filter " +  '"' + read_filter + '"') else ""} \
      ~{if (qual_filter) then "--qual-filter" else ""} \
      ~{if (qual_filter_one) then "--qual-filter-1" else ""} \
      ~{if (aligned) then "--aligned" else ""} \
      ~{if (unaligned) then "--unaligned" else ""} \
      ~{if (aligned_region) then "--aligned-region" else ""} \
      ~{if defined(mate_pair_distance) then ("--matepair_distance " +  '"' + mate_pair_distance + '"') else ""} \
      ~{if (skip_technical) then "--skip-technical" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if (split_files) then "--split-files" else ""} \
      ~{if (split_e) then "--split-e" else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (group_in_dirs) then "--group-in-dirs" else ""} \
      ~{if (keep_empty_files) then "--keep-empty-files" else ""} \
      ~{if defined(dump_cs) then ("--dumpcs " +  '"' + dump_cs + '"') else ""} \
      ~{if (dump_base) then "--dumpbase" else ""} \
      ~{if (offset) then "--offset" else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if (suppress_qual_for_cs_key) then "--suppress-qual-for-cskey" else ""} \
      ~{if (orig_fmt) then "--origfmt" else ""} \
      ~{if (h_elicos) then "--helicos" else ""} \
      ~{if defined(def_line_seq) then ("--defline-seq " +  '"' + def_line_seq + '"') else ""} \
      ~{if defined(def_line_qual) then ("--defline-qual " +  '"' + def_line_qual + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    accession: "Replaces accession derived from <path> in\\nfilename(s) and deflines (only for\\nsingle table dump)"
    table: "Table name within cSRA object, default is\\n\\\"SEQUENCE\\\""
    split_spot: "Split spots into individual reads"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
    spot_groups: "<[list]>[,...]  Filter by SPOT_GROUP (member): name[,...]"
    clip: "Remove adapter sequences from reads"
    min_read_len: "Filter by sequence length >= <len>"
    read_filter: "Split into files by READ_FILTER value\\n[split], optionally filter by value:\\n[pass|reject|criteria|redacted]"
    qual_filter: "Filter used in early 1000 Genomes data: no\\nsequences starting or ending with >= 10N"
    qual_filter_one: "Filter used in current 1000 Genomes data"
    aligned: "Dump only aligned sequences"
    unaligned: "Dump only unaligned sequences"
    aligned_region: "<name[:from-to]>\\nFilter by position on genome. Name can\\neiter by accession.version (ex:\\nNC_000001.10) or file specific name (ex:\\n\\\"chr1\\\" or \\\"1\\\". \\\"from\\\" and \\\"to\\\" are\\n1-based coordinates"
    mate_pair_distance: "Filter by distance between matepairs. Use\\n\\\"unknown\\\" to find matepairs split\\nbetween the references. Use from-to to\\nlimit matepair distance on the same\\nreference"
    skip_technical: "Dump only biological reads"
    outdir: "Output directory, default is working\\ndirectory '.'"
    stdout: "Output to stdout, all split data become\\njoined into single stream"
    gzip: "Compress output using gzip: deprecated,\\nnot recommended"
    bzip_two: "Compress output using bzip2: deprecated,\\nnot recommended"
    split_files: "Write reads into separate files. Read\\nnumber will be suffixed to the file\\nname. NOTE! The `--split-3` option is\\nrecommended. In cases where not all\\nspots have the same number of reads,\\nthis option will produce files that WILL\\nCAUSE ERRORS in most programs which\\nprocess split pair fastq files."
    split_e: "3-way splitting for mate-pairs. For each\\nspot, if there are two biological reads\\nsatisfying filter conditions, the first\\nis placed in the `*_1.fastq` file, and\\nthe second is placed in the `*_2.fastq`\\nfile. If there is only one biological\\nread satisfying the filter conditions,\\nit is placed in the `*.fastq` file.All\\nother reads in the spot are ignored."
    spot_group: "Split into files by SPOT_GROUP (member\\nname)"
    group_in_dirs: "Split into subdirectories instead of files"
    keep_empty_files: "Do not delete empty files"
    dump_cs: "Formats sequence using color space\\n(default for SOLiD), \\\"cskey\\\" may be\\nspecified for translation or else\\nspecify \\\"dflt\\\" to use the default value"
    dump_base: "Formats sequence using base space (default\\nfor other than SOLiD)."
    offset: "<integer             Offset to use for quality conversion,\\ndefault is 33"
    fast_a: "FASTA only, no qualities, with can be\\n\\\"default\\\" or \\\"0\\\" for no wrapping"
    suppress_qual_for_cs_key: "suppress quality-value for cskey"
    orig_fmt: "Defline contains only original sequence"
    h_elicos: "Helicos style defline"
    def_line_seq: "Defline format specification for sequence."
    def_line_qual: "Defline format specification for quality.\\n<fmt> is string of characters and/or\\nvariables. The variables can be one of:\\n$ac - accession, $si spot id, $sn spot\\nname, $sg spot group (barcode), $sl spot\\nlength in bases, $ri read number, $rn\\nread name, $rl read length in bases.\\n'[]' could be used for an optional\\noutput: if all vars in [] yield empty\\nvalues whole group is not printed. Empty\\nvalue is empty string or for numeric\\nvariables. Ex: @$sn[_$rn]/$ri '_$rn' is\\nomitted if name is empty"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string.\\nOne of\\n(fatal|sys|int|err|warn|info|debug) or\\n(0-6) Current/default is warn"
    option_file: "Read more options and parameters from the"
    name: "-I|--readids                     Append read id after spot id as"
    file_dot: "-h|--help                        print this message"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}