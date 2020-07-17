version 1.0

task AlignTrim {
  input {
    String? normalise
    String? report
    Boolean? start
    String bed_file
  }
  command <<<
    align_trim \
      ~{bed_file} \
      ~{if defined(normalise) then ("--normalise " +  '"' + normalise + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{true="--start" false="" start}
  >>>
  parameter_meta {
    normalise: ""
    report: ""
    start: ""
    bed_file: "BED file containing the amplicon scheme"
  }
}