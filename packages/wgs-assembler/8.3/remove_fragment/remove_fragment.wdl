version 1.0

task RemoveFragment {
  input {
    File? one_uid_line
    String? fragments_input
    String? fragments_not_listed
    String? fragments_listed_uidfile
  }
  command <<<
    remove_fragment \
      ~{if defined(one_uid_line) then ("-f " +  '"' + one_uid_line + '"') else ""} \
      ~{if defined(fragments_input) then ("-i " +  '"' + fragments_input + '"') else ""} \
      ~{if defined(fragments_not_listed) then ("-o " +  '"' + fragments_not_listed + '"') else ""} \
      ~{if defined(fragments_listed_uidfile) then ("-O " +  '"' + fragments_listed_uidfile + '"') else ""}
  >>>
  parameter_meta {
    one_uid_line: "one uid per line"
    fragments_input: "fragments input"
    fragments_not_listed: "fragments NOT listed in UIDfile are saved here"
    fragments_listed_uidfile: "fragments     listed in UIDfile are saved here"
  }
  output {
    File out_stdout = stdout()
  }
}