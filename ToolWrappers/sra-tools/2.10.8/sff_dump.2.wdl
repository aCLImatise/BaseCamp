version 1.0

task Sffdump2 {
  input {
    File? accession
    Directory? outdir
    Boolean? stdout
    File? path_ngc_file
    String? min_spot_id
    String? max_spot_id
    Boolean? spot_group
    Boolean? spot_groups
    Boolean? read_filter
    Boolean? group_in_dirs
    Boolean? keep_empty_files
    String? table_name_csra
    Boolean? disable_multithreading
    Int? log_level
    Boolean? verbose
    Boolean? ncbi_error_report
    Boolean? legacy_report
    String var_17
    File path
    String name
    String to
    String var_21
    String within
    String csra
    String var_object
  }
  command <<<
    sff_dump_2 \
      ~{var_17} \
      ~{path} \
      ~{name} \
      ~{to} \
      ~{var_21} \
      ~{within} \
      ~{csra} \
      ~{var_object} \
      ~{if defined(accession) then ("--accession " +  '"' + accession + '"') else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""} \
      ~{if (stdout) then "--stdout" else ""} \
      ~{if defined(path_ngc_file) then ("--ngc " +  '"' + path_ngc_file + '"') else ""} \
      ~{if defined(min_spot_id) then ("--minSpotId " +  '"' + min_spot_id + '"') else ""} \
      ~{if defined(max_spot_id) then ("--maxSpotId " +  '"' + max_spot_id + '"') else ""} \
      ~{if (spot_group) then "--spot-group" else ""} \
      ~{if (spot_groups) then "--spot-groups" else ""} \
      ~{if (read_filter) then "--read-filter" else ""} \
      ~{if (group_in_dirs) then "--group-in-dirs" else ""} \
      ~{if (keep_empty_files) then "--keep-empty-files" else ""} \
      ~{if defined(table_name_csra) then ("--table " +  '"' + table_name_csra + '"') else ""} \
      ~{if (disable_multithreading) then "--disable-multithreading" else ""} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (ncbi_error_report) then "--ncbi_error_report" else ""} \
      ~{if (legacy_report) then "--legacy-report" else ""}
  >>>
  parameter_meta {
    accession: "Replaces accession derived from <path> in\\nfilename(s) and deflines (only for single\\ntable dump)"
    outdir: "Output directory, default is working\\ndirectory '.' )"
    stdout: "Output to stdout, all split data become\\njoined into single stream"
    path_ngc_file: "<path> to ngc file"
    min_spot_id: "Minimum spot id"
    max_spot_id: "Maximum spot id"
    spot_group: "Split into files by SPOT_GROUP (member name)"
    spot_groups: "<[list]>           Filter by SPOT_GROUP (member): name[,...]"
    read_filter: "<[filter]>      Split into files by READ_FILTER value\\noptionally filter by value:\\npass|reject|criteria|redacted"
    group_in_dirs: "Split into subdirectories instead of files"
    keep_empty_files: "Do not delete empty files"
    table_name_csra: "Table name within cSRA object, default is\\n\\\"SEQUENCE\\\""
    disable_multithreading: "disable multithreading"
    log_level: "Logging level as number or enum string One\\nof (fatal|sys|int|err|warn|info) or (0-5)\\nCurrent/default is warn"
    verbose: "Increase the verbosity level of the program\\nUse multiple times for more verbosity"
    ncbi_error_report: "Control program execution environment\\nreport generation (if implemented). One of\\n(never|error|always). Default is error"
    legacy_report: "use legacy style 'Written spots' for tool"
    var_17: ""
    path: ""
    name: ""
    to: ""
    var_21: ""
    within: ""
    csra: ""
    var_object: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}