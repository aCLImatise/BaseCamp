version 1.0

task RNALfold {
  input {
    Boolean? detailed_help
    Boolean? full_help
    Int? span
    File? outfile
    File? in_file
    Boolean? auto_id
    Boolean? zscore
    Boolean? zscore_pre_filter
    Boolean? zscore_report_subsumed
    Boolean? backtrack_global
    Boolean? g_quad
    File? shape
    Int? temp
    Int? dangles
    Boolean? no_lp
    File? param_file
    String program
    String recursions
    String predictions_dot
  }
  command <<<
    RNALfold \
      ~{program} \
      ~{recursions} \
      ~{predictions_dot} \
      ~{if (detailed_help) then "--detailed-help" else ""} \
      ~{if (full_help) then "--full-help" else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{if (auto_id) then "--auto-id" else ""} \
      ~{if (zscore) then "--zscore" else ""} \
      ~{if (zscore_pre_filter) then "--zscore-pre-filter" else ""} \
      ~{if (zscore_report_subsumed) then "--zscore-report-subsumed" else ""} \
      ~{if (backtrack_global) then "--backtrack-global" else ""} \
      ~{if (g_quad) then "--gquad" else ""} \
      ~{if defined(shape) then ("--shape " +  '"' + shape + '"') else ""} \
      ~{if defined(temp) then ("--temp " +  '"' + temp + '"') else ""} \
      ~{if defined(dangles) then ("--dangles " +  '"' + dangles + '"') else ""} \
      ~{if (no_lp) then "--noLP" else ""} \
      ~{if defined(param_file) then ("--paramFile " +  '"' + param_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/viennarna:2.4.17--py36hd181a71_0"
  }
  parameter_meta {
    detailed_help: "Print help, including all details and hidden\\noptions, and exit"
    full_help: "Print help, including hidden options, and exit"
    span: "Set the maximum distance between any two\\npairing nucleotides.\\n(default=`150')"
    outfile: "[=<filename>]    Print output to file instead of stdout"
    in_file: "Read a file instead of reading from stdin"
    auto_id: "Automatically generate an ID for each sequence.\\n(default=off)"
    zscore: "[=DOUBLE]         Limit the output to predictions with a Z-score\\nbelow a threshold\\n(default=`-2')"
    zscore_pre_filter: "Apply the z-score filtering in the forward"
    zscore_report_subsumed: "Report subsumed structures if their z-score is\\nless than that of the enclosing structure\\n(default=off)"
    backtrack_global: "Backtrack a global MFE structure.\\n(default=off)"
    g_quad: "Incoorporate G-Quadruplex formation into the\\nstructure prediction algorithm\\n(default=off)"
    shape: "Use SHAPE reactivity data to guide structure"
    temp: "Rescale energy parameters to a temperature of\\ntemp C. Default is 37C."
    dangles: "Change the dangling end model\\n(default=`2')"
    no_lp: "Produce structures without lonely pairs\\n(helices of length 1).\\n(default=off)"
    param_file: "Read energy parameters from paramfile, instead\\nof using the default parameter set."
    program: "-v, --verbose                 Be verbose\\n(default=off)"
    recursions: "(default=off)"
    predictions_dot: "Model Details:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}