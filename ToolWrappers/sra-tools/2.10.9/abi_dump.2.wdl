version 1.0

task Abidump2 {
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
    Boolean? no_clip
    Boolean? orig_fmt
    Boolean? no_dot_reads
    Boolean? bzip_two
    String recommended
    String dots
  }
  command <<<
    abi_dump_2 \
      ~{recommended} \
      ~{dots} \
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
      ~{if (no_clip) then "--noclip" else ""} \
      ~{if (orig_fmt) then "--origfmt" else ""} \
      ~{if (no_dot_reads) then "--noDotReads" else ""} \
      ~{if (bzip_two) then "--bzip2" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sra-tools:2.10.9--pl526haddd2b5_0"
  }
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
    no_clip: "Do not clip quality left and right for spot"
    orig_fmt: "Excludes SRR accession on defline"
    no_dot_reads: "Do not output reads consisting mostly of"
    bzip_two: ""
    recommended: "--bzip2                          Compress output using bzip2: deprecated, "
    dots: "abi-dump.2 : 2.10.9"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}