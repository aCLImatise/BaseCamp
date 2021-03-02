version 1.0

task TeLeap {
  input {
    Boolean? ignore_leaprc_startup
    String? add_search_path
    String? source_
  }
  command <<<
    teLeap \
      ~{if (ignore_leaprc_startup) then "-s" else ""} \
      ~{if defined(add_search_path) then ("-I " +  '"' + add_search_path + '"') else ""} \
      ~{if defined(source_) then ("-f " +  '"' + source_ + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_leaprc_startup: "Ignore leaprc startup file."
    add_search_path: "Add {dir} to search path."
    source_: "Source {file}."
  }
  output {
    File out_stdout = stdout()
  }
}