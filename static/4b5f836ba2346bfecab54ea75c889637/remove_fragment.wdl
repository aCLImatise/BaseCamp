version 1.0

task RemoveFragment {
  input {
    File? one_uid_line
    String? fragments_input
    String? fragments_not_listed_uidfile_saved_here
    String? fragments__listed_uidfile_saved_here
  }
  command <<<
    remove_fragment \
      ~{if defined(one_uid_line) then ("-f " +  '"' + one_uid_line + '"') else ""} \
      ~{if defined(fragments_input) then ("-i " +  '"' + fragments_input + '"') else ""} \
      ~{if defined(fragments_not_listed_uidfile_saved_here) then ("-o " +  '"' + fragments_not_listed_uidfile_saved_here + '"') else ""} \
      ~{if defined(fragments__listed_uidfile_saved_here) then ("-O " +  '"' + fragments__listed_uidfile_saved_here + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one_uid_line: "one uid per line"
    fragments_input: "fragments input"
    fragments_not_listed_uidfile_saved_here: "fragments NOT listed in UIDfile are saved here"
    fragments__listed_uidfile_saved_here: "fragments     listed in UIDfile are saved here"
  }
  output {
    File out_stdout = stdout()
  }
}