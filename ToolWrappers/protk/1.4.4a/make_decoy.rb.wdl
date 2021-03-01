version 1.0

task MakeDecoyrb {
  input {
    File? explicitly_named_output
    Int? db_length
    String? prefix_string
    Boolean? reverse_only
    String? id_regex
    Boolean? append
    String real_db_dot_fast_a
  }
  command <<<
    make_decoy_rb \
      ~{real_db_dot_fast_a} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if defined(db_length) then ("--db-length " +  '"' + db_length + '"') else ""} \
      ~{if defined(prefix_string) then ("--prefix-string " +  '"' + prefix_string + '"') else ""} \
      ~{if (reverse_only) then "--reverse-only" else ""} \
      ~{if defined(id_regex) then ("--id-regex " +  '"' + id_regex + '"') else ""} \
      ~{if (append) then "--append" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    db_length: "Number of sequences to generate [0]"
    prefix_string: "String to prepend to sequence ids [decoy_]"
    reverse_only: "Just reverse sequences. Dont try to randomize. Ignores -L [false]"
    id_regex: "Regex for finding IDs. If reverse-only is used then this will be used to find ids and prepend with the decoy string. Default .*?\\|(.*?)[ \\|] [.*?\\|(.*?)[ \\|]]"
    append: "Append input sequences to the generated database [false]"
    real_db_dot_fast_a: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}