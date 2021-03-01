version 1.0

task Mapsifter {
  input {
    File? name_output_file
    Boolean? verbose
    Boolean? exclude
    Boolean? upper
    Boolean? lower
    Boolean? target
    Boolean? about
    File bed_format_file
  }
  command <<<
    mapsifter \
      ~{bed_format_file} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (exclude) then "-exclude" else ""} \
      ~{if (upper) then "-upper" else ""} \
      ~{if (lower) then "-lower" else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    verbose: "print more run info"
    exclude: "exclude contained"
    upper: "upper bound on scores"
    lower: "lower bound on scores"
    target: "target regions file"
    about: "print about message"
    bed_format_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}