version 1.0

task MixcrAssemble {
  input {
    Boolean? overwrite_if_required
    Boolean? verbose
    File? write_alignments
    File? force_overwrite
    File? json_report
    Boolean? no_warnings
    Boolean? stringstring_overrides_default
    String? parameters
    File? report
    String? threads
    Boolean? af
    String scr
    String assemble
    String? assembler_parameters_name
  }
  command <<<
    mixcr assemble \
      ~{scr} \
      ~{assemble} \
      ~{assembler_parameters_name} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (write_alignments) then "--write-alignments" else ""} \
      ~{if (force_overwrite) then "--force-overwrite" else ""} \
      ~{if defined(json_report) then ("--json-report " +  '"' + json_report + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if (stringstring_overrides_default) then "-O" else ""} \
      ~{if defined(parameters) then ("--parameters " +  '"' + parameters + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (af) then "-af" else ""}
  >>>
  parameter_meta {
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    verbose: "Verbose warning messages."
    write_alignments: "If this option is specified, output file will be written in \\\"Clones &\\nAlignments\\\" format (*.clna), containing clones and all corresponding\\nalignments. This file then can be used to build wider contigs for clonal\\nsequence and extract original reads for each clone (if\\n-OsaveOriginalReads=true was use on 'align' stage)."
    force_overwrite: "Force overwrite of output file(s)."
    json_report: "JSON formatted report file"
    no_warnings: "Suppress all warning messages."
    stringstring_overrides_default: "<String=String>       Overrides default parameter values."
    parameters: "Clone assembling parameters"
    report: "Report file (human readable version, see -j / --json-report for machine\\nreadable report)"
    threads: "Processing threads"
    af: ""
    scr: ""
    assemble: ""
    assembler_parameters_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_write_alignments = "${in_write_alignments}"
    File out_force_overwrite = "${in_force_overwrite}"
  }
}