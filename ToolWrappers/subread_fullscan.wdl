version 1.0

task Subreadfullscan {
  input {
    String? base_name_index
    Float? minimum_fraction_matched
    String read_string
  }
  command <<<
    subread_fullscan \
      ~{read_string} \
      ~{if defined(base_name_index) then ("-i " +  '"' + base_name_index + '"') else ""} \
      ~{if defined(minimum_fraction_matched) then ("-m " +  '"' + minimum_fraction_matched + '"') else ""}
  >>>
  parameter_meta {
    base_name_index: "Base name of the index."
    minimum_fraction_matched: "The minimum fraction of matched bases in the read, 0.8 by default"
    read_string: "The read bases."
  }
  output {
    File out_stdout = stdout()
  }
}