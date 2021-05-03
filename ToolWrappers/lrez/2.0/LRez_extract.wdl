version 1.0

task LRezExtract {
  input {
    Boolean? bam
    Boolean? region
    Boolean? all
    File? file_where_output
    Boolean? user_x
  }
  command <<<
    LRez extract \
      ~{if (bam) then "--bam" else ""} \
      ~{if (region) then "--region" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (file_where_output) then "--output" else ""} \
      ~{if (user_x) then "--userx" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/lrez:2.0--hc90279e_0"
  }
  parameter_meta {
    bam: "BAM file to extract barcodes from"
    region: "Region of interest in format chromosome:startPosition-endPosition"
    all: "Extract all barcodes"
    file_where_output: "File where to output the extracted barcodes (optional, default: stdout)"
    user_x: "Consider barcodes that only appear in the RX tag (optional, default: false)"
  }
  output {
    File out_stdout = stdout()
    File out_file_where_output = "${in_file_where_output}"
  }
}