version 1.0

task DriveDu {
  input {
    Int? depth
    Boolean? directories
    String? exact_owner
    String? exact_title
    Boolean? files
    Boolean? id
    Boolean? long
    String? match_mime
    String? match_owner
    Boolean? matches
    Boolean? no_prompt
    Boolean? owners
    Int? pagesize
    Boolean? quiet
    Boolean? recursive
    Boolean? shared
    String? skip_mime
    String? skip_owner
    Int? sort
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
      ~{if (id) then "-id" else ""} \
      ~{if (long) then "-long" else ""} \
      ~{if defined(match_mime) then ("-match-mime " +  '"' + match_mime + '"') else ""} \
      ~{if defined(match_owner) then ("-match-owner " +  '"' + match_owner + '"') else ""} \
      ~{if (matches) then "-matches" else ""} \
      ~{if (no_prompt) then "-no-prompt" else ""} \
      ~{if (owners) then "-owners" else ""} \
      ~{if defined(pagesize) then ("-pagesize " +  '"' + pagesize + '"') else ""} \
      ~{if (quiet) then "-quiet" else ""} \
      ~{if (recursive) then "-recursive" else ""} \
      ~{if (shared) then "-shared" else ""} \
      ~{if defined(skip_mime) then ("-skip-mime " +  '"' + skip_mime + '"') else ""} \
      ~{if defined(skip_owner) then ("-skip-owner " +  '"' + skip_owner + '"') else ""} \
      ~{if defined(sort) then ("-sort " +  '"' + sort + '"') else ""} \
      ~{if (trashed) then "-trashed" else ""} \
      ~{if (version) then "-version" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    depth: "maximum recursion depth (default 1)"
    directories: "list all directories"
    exact_owner: "elements with the exact owner"
    exact_title: "get elements with the exact titles"
    files: "list only files"
    id: "list by id instead of path"
    long: "long listing of contents"
    match_mime: "get elements with the exact mimeTypes derived from extensions"
    match_owner: "elements with matching owners"
    matches: "list by prefix"
    no_prompt: "shows no prompt before pagination"
    owners: "shows the owner names per file"
    pagesize: "number of results per pagination (default 100)"
    quiet: "if set, do not log anything but errors"
    recursive: "recursively list subdirectories"
    shared: "show files that are shared with me"
    skip_mime: "skip elements with mimeTypes derived from these extensions"
    skip_owner: "ignore elements owned by these users"
    sort: "sort items by a combination of attributes\\n* modtime.\\n* md5.\\n* name.\\n* size.\\n* type.\\n* version"
    trashed: "list content in the trash"
    version: "show the number of times that the file has been modified on\\nthe server even with changes not visible to the user\\n"
  }
  output {
    File out_stdout = stdout()
  }
}