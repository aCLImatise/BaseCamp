version 1.0

task Mergevcf {
  input {
    String? specify_output_file
    Boolean? verbose
    String? labels
    Boolean? n_callers
    Int? min_callers
    Boolean? sv
    Boolean? filtered
    String? sv_window
    String input_files
  }
  command <<<
    mergevcf \
      ~{input_files} \
      ~{if defined(specify_output_file) then ("--output " +  '"' + specify_output_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{true="--ncallers" false="" n_callers} \
      ~{if defined(min_callers) then ("--mincallers " +  '"' + min_callers + '"') else ""} \
      ~{true="--sv" false="" sv} \
      ~{true="--filtered" false="" filtered} \
      ~{if defined(sv_window) then ("--svwindow " +  '"' + sv_window + '"') else ""}
  >>>
  parameter_meta {
    specify_output_file: "Specify output file (default:stdout)"
    verbose: "Specify verbose output"
    labels: "Comma-separated labels for each input VCF file (default:basenames)"
    n_callers: "Annotate variant with number of callers"
    min_callers: "Minimum # of callers for variant to pass"
    sv: "Force interpretation as SV (default:false)"
    filtered: "Include records that have failed one or more filters (default:false)"
    sv_window: "Window for comparing breakpoint positions for SVs (default:100)"
    input_files: "Input VCF files"
  }
}