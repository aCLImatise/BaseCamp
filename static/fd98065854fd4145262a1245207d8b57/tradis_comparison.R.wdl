version 1.0

task TradisComparisonR {
  input {
    Boolean? controls
    Boolean? conditions
    File? _output_filename
    File? output_filename_diagnostic
    Boolean? enable_filtering_minimum
    Boolean? _filter_enabled
    String? cut_off
  }
  command <<<
    tradis_comparison_R \
      ~{cut_off} \
      ~{if (controls) then "--controls" else ""} \
      ~{if (conditions) then "--conditions" else ""} \
      ~{if (_output_filename) then "-o" else ""} \
      ~{if (output_filename_diagnostic) then "-p" else ""} \
      ~{if (enable_filtering_minimum) then "-f" else ""} \
      ~{if (_filter_enabled) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    controls: ": 'control' libraries, generally growth in a permissive"
    conditions: ": libraries exposed to the experimental condition being"
    _output_filename: ": output filename"
    output_filename_diagnostic: ": output filename for diagnostic plots"
    enable_filtering_minimum: ": enable filtering on minimum read counts"
    _filter_enabled: ": if --filter is enabled, sets minimum read count necessary in one"
    cut_off: ""
  }
  output {
    File out_stdout = stdout()
    File out__output_filename = "${in__output_filename}"
    File out_output_filename_diagnostic = "${in_output_filename_diagnostic}"
  }
}