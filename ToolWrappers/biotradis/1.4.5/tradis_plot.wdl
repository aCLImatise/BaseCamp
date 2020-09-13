version 1.0

task TradisPlot {
  input {
    Boolean? mapped_sorted_file
    Boolean? mapping_quality_must
    Boolean? output_base_name
  }
  command <<<
    tradis_plot \
      ~{if (mapped_sorted_file) then "-f" else ""} \
      ~{if (mapping_quality_must) then "-m" else ""} \
      ~{if (output_base_name) then "-o" else ""}
  >>>
  parameter_meta {
    mapped_sorted_file: ": mapped, sorted bam file"
    mapping_quality_must: ": mapping quality must be greater than X (optional. default: 30)"
    output_base_name: ": output base name for plot (optional. default: tradis.plot)"
  }
  output {
    File out_stdout = stdout()
  }
}