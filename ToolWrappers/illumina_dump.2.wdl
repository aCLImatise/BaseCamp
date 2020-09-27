version 1.0

task Illuminadump2 {
  input {
    File? accession
    Directory? outdir
    Boolean? stdout
    File? ngc
    Boolean? gzip
    String? min_spot_id
    String? max_spot_id
    Boolean? spot_group
    Boolean? spot_groups
    Boolean? read_filter
    Boolean? group_in_dirs
    Boolean? keep_empty_files
    String? table
    Boolean? disable_multithreading
    Int? log_level
    Boolean? verbose
    Boolean? ncbi_error_report
    Boolean? legacy_report
    Int? qual_one
    Boolean? qual_four
    Boolean? intensity
    Boolean? noise
    Int? q_seq
    Boolean? bzip_two
    String recommended
    String off
  }
  command <<<
    illumina_dump_2 \
      ~{recommended} \
      ~{off} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(ngc) then ("--ngc " +  '"' + ngc + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (spot_groups) then "--spot-groups" else ""} \
      ~{if (read_filter) then "--read-filter" else ""} \
      ~{if (group_in_dirs) then "--group-in-dirs" else ""} \
      ~{if (keep_empty_files) then "--keep-empty-files" else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (ncbi_error_report) then "--ncbi_error_report" else ""} \
      ~{if (legacy_report) then "--legacy-report" else ""} \
      ~{if defined(qual_one) then ("--qual1 " +  '"' + qual_one + '"') else ""} \
      ~{if (qual_four) then "--qual4" else ""} \
      ~{if (intensity) then "--intensity" else ""} \
      ~{if (noise) then "--noise" else ""} \
      ~{if defined(q_seq) then ("--qseq " +  '"' + q_seq + '"') else ""} \
      ~{if (bzip_two) then "--bzip2" else ""}
  >>>
  parameter_meta {
    accession: "Replaces accession derived from <path> in\\nfilename(s) and deflines (only for single\\ntable dump)"
    outdir: "Output directory, default is working\\ndirectory '.' )"
    stdout: "Output to stdout, all split data become\\njoined into single stream"
    ngc: "<path> to ngc file"
    gzip: "Compress output using gzip: deprecated, not"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
    spot_group: "Split into files by SPOT_GROUP (member name)"
    spot_groups: "<[list]>           Filter by SPOT_GROUP (member): name[,...]"
    read_filter: "<[filter]>      Split into files by READ_FILTER value\\noptionally filter by value:\\npass|reject|criteria|redacted"
    group_in_dirs: "Split into subdirectories instead of files"
    keep_empty_files: "Do not delete empty files"
    table: "Table name within cSRA object, default is\\n\\\"SEQUENCE\\\""
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string One\\nof (fatal|sys|int|err|warn|info) or (0-5)\\nCurrent/default is warn"
    verbose: "Increase the verbosity level of the program\\nUse multiple times for more verbosity"
    ncbi_error_report: "Control program execution environment\\nreport generation (if implemented). One of\\n(never|error|always). Default is error"
    legacy_report: "use legacy style 'Written spots' for tool"
    qual_one: "Output QUALITY, whole spot (1) or split by\\nreads (2): \\\"qcal\\\", default is 1"
    qual_four: "Output full QUALITY: \\\"prb\\\", default is off"
    intensity: "Output INTENSITY, if present: \\\"int\\\",\\ndefault is off"
    noise: "Output NOISE, if present: \\\"nse\\\", default is"
    q_seq: "Output QSEQ format: whole spot (1) or split\\nby reads: \\\"qseq\\\", default is off"
    bzip_two: ""
    recommended: "--bzip2                          Compress output using bzip2: deprecated, "
    off: "-s|--signal                      Output SIGNAL, if present: \\\"sig2\\\", default "
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}