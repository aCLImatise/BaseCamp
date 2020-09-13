version 1.0

task VarscanLimit {
  input {
    Boolean? regions_file
    Boolean? margin_size
    File? output_file
    File? not_file
    String? jar
    String options
  }
  command <<<
    varscan limit \
      ~{options} \
      ~{if (regions_file) then "--regions-file" else ""} \
      ~{if (margin_size) then "--margin-size" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (not_file) then "--not-file" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    regions_file: "- a file of chromosome-start-stops, tab delimited"
    margin_size: "- shoulder bases to allow on either side of targets [0]"
    output_file: "- Output file for the matching variants"
    not_file: "- Output file for variants NOT matching regions/positions"
    jar: ""
    options: "--positions-file - a file of chromosome-positions, tab delimited, or VCF"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
    File out_not_file = "${in_not_file}"
  }
}