version 1.0

task PslCat {
  input {
    String? check
    String? no_head
    Boolean? dir
    File? out
    Boolean? ext
  }
  command <<<
    pslCat \
      ~{if defined(check) then ("-check " +  '"' + check + '"') else ""} \
      ~{if defined(no_head) then ("-nohead " +  '"' + no_head + '"') else ""} \
      ~{if (dir) then "-dir" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (ext) then "-ext" else ""}
  >>>
  parameter_meta {
    check: "input.  Detects more errors but slower"
    no_head: "psl header"
    dir: "files are directories (concatenate all in dirs)"
    out: "put output to file rather than stdout"
    ext: "=.xxx  limit files in directories to those with extension"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}