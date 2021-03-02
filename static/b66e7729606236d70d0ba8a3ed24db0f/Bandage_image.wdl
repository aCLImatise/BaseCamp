version 1.0

task BandageImage {
  input {
    Int? height
    Int? width
    Boolean? help_all
    String graph
    String output_file
  }
  command <<<
    Bandage image \
      ~{graph} \
      ~{output_file} \
      ~{if defined(height) then ("--height " +  '"' + height + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (help_all) then "--helpall" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    height: "Image height (default: 1000)"
    width: "Image width (default: not set)"
    help_all: "View all command line settings"
    graph: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}