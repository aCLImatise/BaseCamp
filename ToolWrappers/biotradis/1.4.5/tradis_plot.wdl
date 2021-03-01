version 1.0

task TradisPlot {
  input {
    Boolean? mapped_bam_file
    Boolean? mapping_quality_be
    Boolean? output_base_name
  }
  command <<<
    tradis_plot \
      ~{if (mapped_bam_file) then "-f" else ""} \
      ~{if (mapping_quality_be) then "-m" else ""} \
      ~{if (output_base_name) then "-o" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mapped_bam_file: ": mapped, sorted bam file"
    mapping_quality_be: ": mapping quality must be greater than X (optional. default: 30)"
    output_base_name: ": output base name for plot (optional. default: tradis.plot)"
  }
  output {
    File out_stdout = stdout()
  }
}