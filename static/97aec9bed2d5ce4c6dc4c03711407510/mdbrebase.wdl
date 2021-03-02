version 1.0

task Mdbrebase {
  input {
    File? output_directory_mdb
    File? verbose
    Boolean? filenames
    Boolean? regex
    String? input_pattern
    String? output_pattern
    Boolean? quiet
    String assembly_to_fix
  }
  command <<<
    mdbrebase \
      ~{assembly_to_fix} \
      ~{if defined(output_directory_mdb) then ("--output " +  '"' + output_directory_mdb + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (filenames) then "--filenames" else ""} \
      ~{if (regex) then "--regex" else ""} \
      ~{if defined(input_pattern) then ("--input-pattern " +  '"' + input_pattern + '"') else ""} \
      ~{if defined(output_pattern) then ("--output-pattern " +  '"' + output_pattern + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory_mdb: "Output directory to the mdb file, replace existing\\none if ommited"
    verbose: "Be verbose with output (show individual path\\nrewrites)"
    filenames: "Only operate on file names, not full absolute paths"
    regex: "Input pattern is a regular expression"
    input_pattern: "Input pattern to replace (must not be a prefix to\\noutput-pattern)(required)"
    output_pattern: "Output pattern to replace (required)"
    quiet: "Be quiet with output (not show anything but errors)"
    assembly_to_fix: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_directory_mdb = "${in_output_directory_mdb}"
    File out_verbose = "${in_verbose}"
  }
}