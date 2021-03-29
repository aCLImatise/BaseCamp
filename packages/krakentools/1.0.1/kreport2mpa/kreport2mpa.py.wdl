version 1.0

task Kreport2mpapy {
  input {
    File? report_file
    File? output_mpareport_file
    Boolean? display_header
    Boolean? read_count
    Boolean? percentages
    Boolean? intermediate_ranks
    Boolean? no_intermediate_ranks
  }
  command <<<
    kreport2mpa_py \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(output_mpareport_file) then ("--output " +  '"' + output_mpareport_file + '"') else ""} \
      ~{if (display_header) then "--display-header" else ""} \
      ~{if (read_count) then "--read_count" else ""} \
      ~{if (percentages) then "--percentages" else ""} \
      ~{if (intermediate_ranks) then "--intermediate-ranks" else ""} \
      ~{if (no_intermediate_ranks) then "--no-intermediate-ranks" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0"
  }
  parameter_meta {
    report_file: "Input kraken report file for converting"
    output_mpareport_file: "Output mpa-report file name"
    display_header: "Include header [Kraken report filename] in mpa-report\\nfile [default: no header]"
    read_count: "Use read count for output [default]"
    percentages: "Use percentages for output [instead of reads]"
    intermediate_ranks: "Include non-traditional taxonomic ranks in output"
    no_intermediate_ranks: "Do not include non-traditional taxonomic ranks in\\noutput [default]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_mpareport_file = "${in_output_mpareport_file}"
  }
}