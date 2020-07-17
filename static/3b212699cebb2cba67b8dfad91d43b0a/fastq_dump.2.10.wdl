version 1.0

task FastqDump.2.10.7 {
  input {
    String? accession
    String? table
    Boolean? split_spot
    String? min_spot_id
    String? max_spot_id
    Boolean? spot_groups
    Boolean? clip
    String? min_read_len
    String? read_filter
    Boolean? qual_filter
    Boolean? qual_filter_one
    Boolean? aligned
    Boolean? unaligned
    Boolean? aligned_region
    String? mate_pair_distance
    Boolean? skip_technical
    File? outdir
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
    String? fast_a
    Boolean? suppress_qual_for_cs_key
    Boolean? orig_fmt
    Boolean? read_ids
    Boolean? h_elicos
    String? def_line_seq
    String? def_line_qual
    File? ngc
    File? perm
    String? location
    File? cart
    Boolean? disable_multithreading
    String? log_level
    File? option_file
  }
  command <<<
    fastq-dump.2.10.7 \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{true="--split-spot" false="" split_spot} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""} \
      ~{true="--spot-groups" false="" spot_groups} \
      ~{true="--clip" false="" clip} \
      ~{if defined(min_read_len) then ("--minReadLen " +  '"' + min_read_len + '"') else ""} \
      ~{if defined(read_filter) then ("--read-filter " +  '"' + read_filter + '"') else ""} \
      ~{true="--qual-filter" false="" qual_filter} \
      ~{true="--qual-filter-1" false="" qual_filter_one} \
      ~{true="--aligned" false="" aligned} \
      ~{true="--unaligned" false="" unaligned} \
      ~{true="--aligned-region" false="" aligned_region} \
      ~{if defined(mate_pair_distance) then ("--matepair_distance " +  '"' + mate_pair_distance + '"') else ""} \
      ~{true="--skip-technical" false="" skip_technical} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{true="--stdout" false="" stdout} \
      ~{true="--gzip" false="" gzip} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{true="--split-files" false="" split_files} \
      ~{true="--split-e" false="" split_e} \
      ~{true="--spot-group" false="" spot_group} \
      ~{true="--group-in-dirs" false="" group_in_dirs} \
      ~{true="--keep-empty-files" false="" keep_empty_files} \
      ~{if defined(dump_cs) then ("--dumpcs " +  '"' + dump_cs + '"') else ""} \
      ~{true="--dumpbase" false="" dump_base} \
      ~{true="--offset" false="" offset} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--suppress-qual-for-cskey" false="" suppress_qual_for_cs_key} \
      ~{true="--origfmt" false="" orig_fmt} \
      ~{true="--readids" false="" read_ids} \
      ~{true="--helicos" false="" h_elicos} \
      ~{if defined(def_line_seq) then ("--defline-seq " +  '"' + def_line_seq + '"') else ""} \
      ~{if defined(def_line_qual) then ("--defline-qual " +  '"' + def_line_qual + '"') else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if defined(perm) then ("--perm " +  '"' + perm + '"') else ""} \
      ~{if defined(location) then ("--location " +  '"' + location + '"') else ""} \
      ~{if defined(cart) then ("--cart " +  '"' + cart + '"') else ""} \
      ~{true="--disable-multithreading" false="" disable_multithreading} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""}
  >>>
  parameter_meta {
    accession: "Replaces accession derived from <path> in filename(s) and deflines (only for single table dump)"
    table: "Table name within cSRA object, default is \"SEQUENCE\""
    split_spot: "Split spots into individual reads"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
    spot_groups: "<[list]>[,...]  Filter by SPOT_GROUP (member): name[,...]"
    clip: "Remove adapter sequences from reads"
    min_read_len: "Filter by sequence length >= <len>"
    read_filter: "Split into files by READ_FILTER value [split], optionally filter by value: [pass|reject|criteria|redacted]"
    qual_filter: "Filter used in early 1000 Genomes data: no sequences starting or ending with >= 10N"
    qual_filter_one: "Filter used in current 1000 Genomes data"
    aligned: "Dump only aligned sequences"
    unaligned: "Dump only unaligned sequences"
    aligned_region: "<name[:from-to]> Filter by position on genome. Name can eiter by accession.version (ex: NC_000001.10) or file specific name (ex: \"chr1\" or \"1\". \"from\" and \"to\" are 1-based coordinates"
    mate_pair_distance: "Filter by distance between matepairs. Use \"unknown\" to find matepairs split between the references. Use from-to to limit matepair distance on the same reference"
    skip_technical: "Dump only biological reads"
    outdir: "Output directory, default is working directory '.'"
    stdout: "Output to stdout, all split data become joined into single stream"
    gzip: "Compress output using gzip: deprecated, not recommended"
    bzip_two: "Compress output using bzip2: deprecated, not recommended"
    split_files: "Write reads into separate files. Read number will be suffixed to the file name. NOTE! The `--split-3` option is recommended. In cases where not all spots have the same number of reads, this option will produce files that WILL CAUSE ERRORS in most programs which process split pair fastq files."
    split_e: "3-way splitting for mate-pairs. For each spot, if there are two biological reads satisfying filter conditions, the first is placed in the `*_1.fastq` file, and the second is placed in the `*_2.fastq` file. If there is only one biological read satisfying the filter conditions, it is placed in the `*.fastq` file.All other reads in the spot are ignored."
    spot_group: "Split into files by SPOT_GROUP (member name)"
    group_in_dirs: "Split into subdirectories instead of files"
    keep_empty_files: "Do not delete empty files"
    dump_cs: "Formats sequence using color space (default for SOLiD), \"cskey\" may be specified for translation or else specify \"dflt\" to use the default value"
    dump_base: "Formats sequence using base space (default for other than SOLiD)."
    offset: "<integer             Offset to use for quality conversion, default is 33"
    fast_a: "FASTA only, no qualities, with can be \"default\" or \"0\" for no wrapping"
    suppress_qual_for_cs_key: "suppress quality-value for cskey"
    orig_fmt: "Defline contains only original sequence name"
    read_ids: "Append read id after spot id as 'accession.spot.readid' on defline"
    h_elicos: "Helicos style defline"
    def_line_seq: "Defline format specification for sequence."
    def_line_qual: "Defline format specification for quality. <fmt> is string of characters and/or variables. The variables can be one of: $ac - accession, $si spot id, $sn spot name, $sg spot group (barcode), $sl spot length in bases, $ri read number, $rn read name, $rl read length in bases. '[]' could be used for an optional output: if all vars in [] yield empty values whole group is not printed. Empty value is empty string or for numeric variables. Ex: @$sn[_$rn]/$ri '_$rn' is omitted if name is empty"
    ngc: "<path> to ngc file"
    perm: "<path> to permission file"
    location: "location in cloud"
    cart: "<path> to cart file"
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string. One of (fatal|sys|int|err|warn|info|debug) or (0-6) Current/default is warn"
    option_file: "Read more options and parameters from the file."
  }
}