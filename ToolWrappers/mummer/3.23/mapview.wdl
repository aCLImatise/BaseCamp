version 1.0

task Mapview {
  input {
    Boolean? maxdist_set_distance
    Boolean? format_set_format
    Boolean? mag_set_magnification
    Boolean? num_set_number
    File? prefix_set_file
    Boolean? verbose
    Int? x_one
    Int? x_two
    Boolean? ref_file_provided
    Boolean? display_name_query
    Boolean? ir
    String printing_dot
  }
  command <<<
    mapview \
      ~{printing_dot} \
      ~{if (maxdist_set_distance) then "-d" else ""} \
      ~{if (format_set_format) then "-f" else ""} \
      ~{if (mag_set_magnification) then "-m" else ""} \
      ~{if (num_set_number) then "-n" else ""} \
      ~{if (prefix_set_file) then "-p" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(x_one) then ("-x1 " +  '"' + x_one + '"') else ""} \
      ~{if defined(x_two) then ("-x2 " +  '"' + x_two + '"') else ""} \
      ~{if (ref_file_provided) then "-g" else ""} \
      ~{if (display_name_query) then "-I" else ""} \
      ~{if (ir) then "-Ir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    maxdist_set_distance: "|maxdist      Set the maximum base-pair distance between linked matches\\n(default 50000)"
    format_set_format: "|format       Set the output format to 'pdf', 'ps' or 'fig'\\n(default 'fig')"
    mag_set_magnification: "|mag          Set the magnification at which the figure is rendered,\\nthis is an option for fig2dev which is used to generate\\nthe PDF and PS files (default 1.0)"
    num_set_number: "|num          Set the number of output files used to partition the\\noutput, this is to avoid generating files that are too\\nlarge to display (default 10)"
    prefix_set_file: "|prefix       Set the output file prefix\\n(default \\\"PROMER_graph or NUCMER_graph\\\")"
    verbose: "Verbose logging of the processed files"
    x_one: "Set the lower coordinate bound of the display"
    x_two: "Set the upper coordinate bound of the display"
    ref_file_provided: "|ref          If the input file is provided by 'mgaps', set the\\nreference sequence ID (as it appears in the first column\\nof the UTR/CDS coords file)"
    display_name_query: "Display the name of query sequences"
    ir: "Display the name of reference genes"
    printing_dot: "MANDATORY:"
  }
  output {
    File out_stdout = stdout()
    File out_prefix_set_file = "${in_prefix_set_file}"
  }
}