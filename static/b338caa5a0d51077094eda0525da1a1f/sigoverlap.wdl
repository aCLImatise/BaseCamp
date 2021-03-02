version 1.0

task Sigoverlap {
  input {
    File? name_output_file
    Boolean? verbose
    Boolean? target
    Boolean? size
    Boolean? about
    File bed_format_file
  }
  command <<<
    sigoverlap \
      ~{bed_format_file} \
      ~{if (name_output_file) then "-output" else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if (target) then "-target" else ""} \
      ~{if (size) then "-size" else ""} \
      ~{if (about) then "-about" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_output_file: "Name of output file (default: stdout)"
    verbose: "print more run info"
    target: "target regions file"
    size: "genome size"
    about: "print about message"
    bed_format_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}