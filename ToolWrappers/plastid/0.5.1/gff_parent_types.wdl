version 1.0

task GffParentTypes {
  input {
    Array[String] exclude
    Boolean? quiet
    Boolean? verbose
    String in_file_dot_gff
    String outfile_dot_txt
  }
  command <<<
    gff_parent_types \
      ~{in_file_dot_gff} \
      ~{outfile_dot_txt} \
      ~{if defined(exclude) then ("--exclude " +  '"' + exclude + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    exclude: "Feature types to exclude from consideration"
    quiet: "Suppress all warning messages. Cannot use with '-v'."
    verbose: "Increase verbosity. With '-v', show every warning.\\nWith '-vv', turn warnings into exceptions. Cannot use\\nwith '-q'. (Default: show each type of warning once)\\n"
    in_file_dot_gff: "Input GFF3 file"
    outfile_dot_txt: "Name of output file"
  }
  output {
    File out_stdout = stdout()
  }
}