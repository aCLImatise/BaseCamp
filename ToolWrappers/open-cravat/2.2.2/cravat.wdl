version 1.0

task Cravat {
  input {
    Array[String] annotators_to_run
    Array[String] annotators_to_exclude
    String? name_cravat_run
    Directory? directory_output_files
    String? start_at
    String? end_at
    String? skip
    File? path_conf_file
    String? cs
    Boolean? verbose
    String? report_types_omitted
    String? lift_over
    Boolean? deletes_existing_database
    File? note
    Int? mp
    String? input_format
    Boolean? temp_files
    Boolean? write_admin_db
    String? jobid
    Boolean? separate_sample
    Boolean? primary_transcript
    Boolean? clean_run
    Boolean? do_not_change_status
    Boolean? module_option
    Boolean? system_option
    Boolean? silent
    Boolean? concise_report
    String inputs
    String one_dot
  }
  command <<<
    cravat \
      ~{inputs} \
      ~{one_dot} \
      ~{if defined(annotators_to_run) then ("-a " +  '"' + annotators_to_run + '"') else ""} \
      ~{if defined(annotators_to_exclude) then ("-e " +  '"' + annotators_to_exclude + '"') else ""} \
      ~{if defined(name_cravat_run) then ("-n " +  '"' + name_cravat_run + '"') else ""} \
      ~{if defined(directory_output_files) then ("-d " +  '"' + directory_output_files + '"') else ""} \
      ~{if defined(start_at) then ("--startat " +  '"' + start_at + '"') else ""} \
      ~{if defined(end_at) then ("--endat " +  '"' + end_at + '"') else ""} \
      ~{if defined(skip) then ("--skip " +  '"' + skip + '"') else ""} \
      ~{if defined(path_conf_file) then ("-c " +  '"' + path_conf_file + '"') else ""} \
      ~{if defined(cs) then ("--cs " +  '"' + cs + '"') else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(report_types_omitted) then ("-t " +  '"' + report_types_omitted + '"') else ""} \
      ~{if defined(lift_over) then ("--liftover " +  '"' + lift_over + '"') else ""} \
      ~{if (deletes_existing_database) then "-x" else ""} \
      ~{if defined(note) then ("--note " +  '"' + note + '"') else ""} \
      ~{if defined(mp) then ("--mp " +  '"' + mp + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if (temp_files) then "--temp-files" else ""} \
      ~{if (write_admin_db) then "--writeadmindb" else ""} \
      ~{if defined(jobid) then ("--jobid " +  '"' + jobid + '"') else ""} \
      ~{if (separate_sample) then "--separatesample" else ""} \
      ~{if (primary_transcript) then "--primary-transcript" else ""} \
      ~{if (clean_run) then "--cleanrun" else ""} \
      ~{if (do_not_change_status) then "--do-not-change-status" else ""} \
      ~{if (module_option) then "--module-option" else ""} \
      ~{if (system_option) then "--system-option" else ""} \
      ~{if (silent) then "--silent" else ""} \
      ~{if (concise_report) then "--concise-report" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.2--pyh3252c3a_0"
  }
  parameter_meta {
    annotators_to_run: "annotators to run"
    annotators_to_exclude: "annotators to exclude"
    name_cravat_run: "name of cravat run"
    directory_output_files: "directory for output files"
    start_at: "starts at given stage"
    end_at: "ends after given stage."
    skip: "[{converter,mapper,annotator,aggregator,postaggregator,reporter} ...]\\nskips given stage(s)."
    path_conf_file: "path to a conf file"
    cs: "configuration string"
    verbose: "verbose"
    report_types_omitted: "[{text,excel} ...]\\nreport types. If omitted, default one in cravat.yml is\\nused."
    lift_over: "reference genome of input. CRAVAT will lift over to\\nhg38 if needed."
    deletes_existing_database: "deletes the existing result database and creates a new"
    note: "note will be written to the run status file\\n(.status.json)"
    mp: "number of processes to use to run annotators"
    input_format: "Force input format"
    temp_files: "Leave temporary files after run is complete."
    write_admin_db: "Write job information to admin db after job completion"
    jobid: "Job ID for server version"
    separate_sample: "Separate variant results by sample"
    primary_transcript: "[PRIMARY_TRANSCRIPT ...]\\n\\\"mane\\\" for MANE transcripts as primary transcripts, or\\na path to a file of primary transcripts. MANE is\\ndefault."
    clean_run: "Deletes all previous output files for the job and\\ngenerate new ones."
    do_not_change_status: "Job status in status.json will not be changed"
    module_option: "[MODULE_OPTION ...]\\nModule-specific option in module_name.key=value\\nsyntax. For example, --module-option\\nvcfreporter.type=separate"
    system_option: "[SYSTEM_OPTION ...]\\nSystem option in key=value syntax. For example,\\n--system-option modules_dir=/home/user/open-\\ncravat/modules"
    silent: "Runs silently."
    concise_report: "Generate concise reports with default columns defined\\nby each annotation module"
    inputs: "Input file(s). One or more variant files in a\\nsupported format like VCF. See the -i/--input-format\\nflag for supported formats. In the special case where\\nyou want to add annotations to an existing open-cravat\\nanalysis, provide the output sqlite database from the\\nprevious run as input instead of a variant input file."
    one_dot: "--newlog              deletes the existing log file and creates a new one."
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_output_files = "${in_directory_output_files}"
  }
}