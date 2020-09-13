version 1.0

task Envpath {
  input {
    File? append_token_path
    String? newdir_change_olddir
    File? prepend_token_path
    String? token_insert_token
    Boolean? list_specified_pathvars
    Boolean? remove_entries_exist
    File? remove_specified_dir
    Boolean? print_specified_pathvars
    Boolean? remove_redundant_entries
    File? like__path
  }
  command <<<
    envpath \
      ~{if defined(append_token_path) then ("-A " +  '"' + append_token_path + '"') else ""} \
      ~{if defined(newdir_change_olddir) then ("-C " +  '"' + newdir_change_olddir + '"') else ""} \
      ~{if defined(prepend_token_path) then ("-P " +  '"' + prepend_token_path + '"') else ""} \
      ~{if defined(token_insert_token) then ("-I " +  '"' + token_insert_token + '"') else ""} \
      ~{if (list_specified_pathvars) then "-L" else ""} \
      ~{if (remove_entries_exist) then "-N" else ""} \
      ~{if defined(remove_specified_dir) then ("-R " +  '"' + remove_specified_dir + '"') else ""} \
      ~{if (print_specified_pathvars) then "-S" else ""} \
      ~{if (remove_redundant_entries) then "-U" else ""} \
      ~{if defined(like__path) then ("-W " +  '"' + like__path + '"') else ""}
  >>>
  parameter_meta {
    append_token_path: "Append TOKEN to the path variable named 'VAR'"
    newdir_change_olddir: "=newdir     Change <olddir> to <newdir> within 'VAR'"
    prepend_token_path: "Prepend TOKEN to the path variable named 'VAR'"
    token_insert_token: ",(-|+)TOKEN]   Insert TOKEN before (-) or after (+) 'dir' in VAR"
    list_specified_pathvars: "[VAR]             List specified pathvar(s) in one-entry-per-line fmt"
    remove_entries_exist: "Remove entries which don't exist"
    remove_specified_dir: "Remove specified dir from path"
    print_specified_pathvars: "[VAR]             Print specified pathvars in form suitable for `eval`"
    remove_redundant_entries: "Remove redundant entries from path"
    like__path: "Like 'whence' ksh builtin - look for 'file' on PATH"
  }
  output {
    File out_stdout = stdout()
  }
}