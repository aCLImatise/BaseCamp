version 1.0

task MixcrAssembleContigs {
  input {
    Boolean? overwrite_if_required
    Boolean? verbose
    File? force_overwrite
    File? json_report
    Boolean? no_warnings
    Boolean? stringstring_overrides_default
    File? report
    String? threads
    String scr
    String assemble_contigs
    String? report_file
  }
  command <<<
    mixcr assembleContigs \
      ~{scr} \
      ~{assemble_contigs} \
      ~{report_file} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(json_report) then ("--json-report " +  '"' + json_report + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (stringstring_overrides_default) then "-O" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    verbose: "Verbose warning messages."
    force_overwrite: "Force overwrite of output file(s)."
    json_report: "JSON formatted report file"
    no_warnings: "Suppress all warning messages."
    stringstring_overrides_default: "<String=String>       Overrides default parameter values."
    report: "Report file (human readable version, see -j / --json-report for machine\\nreadable report)"
    threads: "Processing threads"
    scr: ""
    assemble_contigs: ""
    report_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_force_overwrite = "${in_force_overwrite}"
  }
}