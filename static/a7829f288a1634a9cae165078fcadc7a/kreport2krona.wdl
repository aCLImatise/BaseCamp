version 1.0

task Kreport2krona.py {
  input {
    String? report_file
    String? output_kronareport_file
    Boolean? intermediate_ranks
    Boolean? no_intermediate_ranks
  }
  command <<<
    kreport2krona.py \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{if defined(output_kronareport_file) then ("--output " +  '"' + output_kronareport_file + '"') else ""} \
      ~{true="--intermediate-ranks" false="" intermediate_ranks} \
      ~{true="--no-intermediate-ranks" false="" no_intermediate_ranks}
  >>>
  parameter_meta {
    report_file: "Input kraken report file for converting"
    output_kronareport_file: "Output krona-report file name"
    intermediate_ranks: "Include non-traditional taxonomic ranks in output"
    no_intermediate_ranks: "Do not include non-traditional taxonomic ranks in output [default: no intermediate ranks]"
  }
}