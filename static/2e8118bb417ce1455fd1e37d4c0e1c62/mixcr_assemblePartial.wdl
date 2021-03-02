version 1.0

task MixcrAssemblePartial {
  input {
    Boolean? overwrite_if_required
    Boolean? verbose
    Boolean? drop_partial
    File? force_overwrite
    File? json_report
    Boolean? no_warnings
    Boolean? overlapped_only
    Boolean? stringstring_overrides_default
    File? report
    Boolean? dfo
    String scr
    String assemble_partial
    String? report_file
  }
  command <<<
    mixcr assemblePartial \
      ~{scr} \
      ~{assemble_partial} \
      ~{report_file} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (drop_partial) then "--drop-partial" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(json_report) then ("--json-report " +  '"' + json_report + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (overlapped_only) then "--overlapped-only" else ""} \
      ~{if (stringstring_overrides_default) then "-O" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if (dfo) then "-dfo" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    verbose: "Verbose warning messages."
    drop_partial: "Drop partial sequences which were not assembled. Can be used to reduce output\\nfile size if no additional rounds of 'assemblePartial' are required."
    force_overwrite: "Force overwrite of output file(s)."
    json_report: "JSON formatted report file"
    no_warnings: "Suppress all warning messages."
    overlapped_only: "Write only overlapped sequences (needed for testing)."
    stringstring_overrides_default: "<String=String>      Overrides default parameter values."
    report: "Report file (human readable version, see -j / --json-report for machine\\nreadable report)\\n"
    dfo: ""
    scr: ""
    assemble_partial: ""
    report_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}