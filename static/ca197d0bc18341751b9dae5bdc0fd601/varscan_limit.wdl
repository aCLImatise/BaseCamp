version 1.0

task VarscanLimit {
  input {
    Boolean? positions_file
    Boolean? regions_file
    Boolean? margin_size
    Boolean? output_file
    Boolean? not_file
    String? jar
    String java
    String limit
    String? in_file
  }
  command <<<
    varscan limit \
      ~{java} \
      ~{limit} \
      ~{in_file} \
      ~{true="--positions-file" false="" positions_file} \
      ~{true="--regions-file" false="" regions_file} \
      ~{true="--margin-size" false="" margin_size} \
      ~{true="--output-file" false="" output_file} \
      ~{true="--not-file" false="" not_file} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    positions_file: "- a file of chromosome-positions, tab delimited, or VCF"
    regions_file: "- a file of chromosome-start-stops, tab delimited"
    margin_size: "- shoulder bases to allow on either side of targets [0]"
    output_file: "- Output file for the matching variants"
    not_file: "- Output file for variants NOT matching regions/positions"
    jar: ""
    java: ""
    limit: ""
    in_file: ""
  }
}