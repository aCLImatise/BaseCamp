version 1.0

task ComplementBed {
  input {
    Boolean? limit_output_solely
    String? g
    String? i
    String bed_tools
    String complement
  }
  command <<<
    complementBed \
      ~{bed_tools} \
      ~{complement} \
      ~{if (limit_output_solely) then "-L" else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0"
  }
  parameter_meta {
    limit_output_solely: "Limit output to solely the chromosomes with records in the input file."
    g: ""
    i: ""
    bed_tools: ""
    complement: ""
  }
  output {
    File out_stdout = stdout()
  }
}