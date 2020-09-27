version 1.0

task CrisprtoolsMerge {
  input {
    File? output_file_
    File? sanitise_names_contains
  }
  command <<<
    crisprtools merge \
      ~{if defined(output_file_) then ("-o " +  '"' + output_file_ + '"') else ""} \
      ~{if (sanitise_names_contains) then "-s" else ""}
  >>>
  parameter_meta {
    output_file_: "output file  [default: crisprtools_merged.crispr]"
    sanitise_names_contains: "sanitise the names so that the resulting output file contains completely unique group IDs"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_ = "${in_output_file_}"
    File out_sanitise_names_contains = "${in_sanitise_names_contains}"
  }
}