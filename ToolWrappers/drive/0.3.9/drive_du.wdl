version 1.0

task DriveDu {
  input {
    Int? depth
    Boolean? directories
    String? exact_owner
    String? exact_title
    Boolean? files
    Boolean? trashed
    Boolean? version
  }
  command <<<
    drive du \
      ~{if defined(depth) then ("-depth " +  '"' + depth + '"') else ""} \
      ~{if (directories) then "-directories" else ""} \
      ~{if defined(exact_owner) then ("-exact-owner " +  '"' + exact_owner + '"') else ""} \
      ~{if defined(exact_title) then ("-exact-title " +  '"' + exact_title + '"') else ""} \
      ~{if (files) then "-files" else ""} \
      ~{if (trashed) then "-trashed" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  parameter_meta {
    depth: "maximum recursion depth (default 1)"
    directories: "list all directories"
    exact_owner: "elements with the exact owner"
    exact_title: "get elements with the exact titles"
    files: "list only files"
    trashed: "list content in the trash"
    version: "show the number of times that the file has been modified on\\nthe server even with changes not visible to the user\\n"
  }
  output {
    File out_stdout = stdout()
  }
}