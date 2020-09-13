version 1.0

task Kreport2mpapy {
  input {
    File? report_file
    File? output_mpareport_file
    Boolean? display_header
    Boolean? no_intermediate_ranks
    File file
  }
  command <<<
    kreport2mpa_py \
      ~{file} \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(output_mpareport_file) then ("--output " +  '"' + output_mpareport_file + '"') else ""} \
      ~{if (display_header) then "--display-header" else ""} \
      ~{if (no_intermediate_ranks) then "--no-intermediate-ranks" else ""}
  >>>
  parameter_meta {
    report_file: "Input kraken report file for converting"
    output_mpareport_file: "Output mpa-report file name"
    display_header: "Include header [Kraken report filename] in mpa-report"
    no_intermediate_ranks: "Do not include non-traditional taxonomic ranks in\\noutput\\n"
    file: "--intermediate-ranks  Include non-traditional taxonomic ranks in output"
  }
  output {
    File out_stdout = stdout()
    File out_output_mpareport_file = "${in_output_mpareport_file}"
  }
}