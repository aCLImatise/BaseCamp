version 1.0

task Kreport2mpa.py {
  input {
    String? report_file
    String? output_mpareport_file
    Boolean? display_header
    Boolean? intermediate_ranks
    Boolean? no_intermediate_ranks
  }
  command <<<
    kreport2mpa.py \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(output_mpareport_file) then ("--output " +  '"' + output_mpareport_file + '"') else ""} \
      ~{true="--display-header" false="" display_header} \
      ~{true="--intermediate-ranks" false="" intermediate_ranks} \
      ~{true="--no-intermediate-ranks" false="" no_intermediate_ranks}
  >>>
  parameter_meta {
    report_file: "Input kraken report file for converting"
    output_mpareport_file: "Output mpa-report file name"
    display_header: "Include header [Kraken report filename] in mpa-report file"
    intermediate_ranks: "Include non-traditional taxonomic ranks in output"
    no_intermediate_ranks: "Do not include non-traditional taxonomic ranks in output"
  }
}