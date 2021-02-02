version 1.0

task Kreport2kronapy {
  input {
    File? report_file
    File? output_kronareport_file
    Boolean? intermediate_ranks
    Boolean? no_intermediate_ranks
  }
  command <<<
    kreport2krona_py \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(output_kronareport_file) then ("--output " +  '"' + output_kronareport_file + '"') else ""} \
      ~{if (intermediate_ranks) then "--intermediate-ranks" else ""} \
      ~{if (no_intermediate_ranks) then "--no-intermediate-ranks" else ""}
  >>>
  parameter_meta {
    report_file: "Input kraken report file for converting"
    output_kronareport_file: "Output krona-report file name"
    intermediate_ranks: "Include non-traditional taxonomic ranks in output"
    no_intermediate_ranks: "Do not include non-traditional taxonomic ranks in\\noutput [default: no intermediate ranks]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_kronareport_file = "${in_output_kronareport_file}"
  }
}