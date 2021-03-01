version 1.0

task Mergevcf {
  input {
    File? specify_output_file
    Boolean? verbose
    File? labels
    Boolean? n_callers
    Int? min_callers
    Boolean? sv
    Boolean? filtered
    Int? sv_window
    String input_files
  }
  command <<<
    mergevcf \
      ~{input_files} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (n_callers) then "--ncallers" else ""} \
      ~{if defined(min_callers) then ("--mincallers " +  '"' + min_callers + '"') else ""} \
      ~{if (sv) then "--sv" else ""} \
      ~{if (filtered) then "--filtered" else ""} \
      ~{if defined(sv_window) then ("--svwindow " +  '"' + sv_window + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_output_file: "Specify output file (default:stdout)"
    verbose: "Specify verbose output"
    labels: "Comma-separated labels for each input VCF file\\n(default:basenames)"
    n_callers: "Annotate variant with number of callers"
    min_callers: "Minimum # of callers for variant to pass"
    sv: "Force interpretation as SV (default:false)"
    filtered: "Include records that have failed one or more filters\\n(default:false)"
    sv_window: "Window for comparing breakpoint positions for SVs\\n(default:100)\\n"
    input_files: "Input VCF files"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_file = "${in_specify_output_file}"
  }
}