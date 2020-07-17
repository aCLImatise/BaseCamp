version 1.0

task Envpath {
  input {
    String? prepend_token_path
    String? token_insert_token
    Boolean? list_specified_pathvars
    Boolean? remove_entries_exist
    String? remove_specified_dir
    Boolean? print_specified_pathvars
    Boolean? remove_redundant_entries
    File? like__path
  }
  command <<<
    envpath \
      ~{if defined(prepend_token_path) then ("-P " +  '"' + prepend_token_path + '"') else ""} \
      ~{if defined(token_insert_token) then ("-I " +  '"' + token_insert_token + '"') else ""} \
      ~{true="-L" false="" list_specified_pathvars} \
      ~{true="-N" false="" remove_entries_exist} \
      ~{if defined(remove_specified_dir) then ("-R " +  '"' + remove_specified_dir + '"') else ""} \
      ~{true="-S" false="" print_specified_pathvars} \
      ~{true="-U" false="" remove_redundant_entries} \
      ~{if defined(like__path) then ("-W " +  '"' + like__path + '"') else ""}
  >>>
  parameter_meta {
    prepend_token_path: "Prepend TOKEN to the path variable named 'VAR'"
    token_insert_token: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
    list_specified_pathvars: "[VAR]             List specified pathvar(s) in one-entry-per-line fmt"
    remove_entries_exist: "Remove entries which don't exist"
    remove_specified_dir: "Remove specified dir from path"
    print_specified_pathvars: "[VAR]             Print specified pathvars in form suitable for `eval`"
    remove_redundant_entries: "Remove redundant entries from path"
    like__path: "Like 'whence' ksh builtin - look for 'file' on PATH"
  }
}