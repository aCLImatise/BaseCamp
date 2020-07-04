version 1.0

task ComplementBed {
  input {
    Boolean? limit_output_solely
    String? i
    String? g
    String bed_tools
    String complement
  }
  command <<<
    complementBed \
      ~{bed_tools} \
      ~{complement} \
      ~{true="-L" false="" limit_output_solely} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(g) then ("-g " +  '"' + g + '"') else ""}
  >>>
  parameter_meta {
    limit_output_solely: "Limit output to solely the chromosomes with records in the input file."
    i: ""
    g: ""
    bed_tools: ""
    complement: ""
  }
}