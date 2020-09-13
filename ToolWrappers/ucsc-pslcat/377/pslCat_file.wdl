version 1.0

task PslCatFile {
  input {
    String match
  }
  command <<<
    pslCat file \
      ~{match}
  >>>
  parameter_meta {
    match: "match           count   bases   count   bases           name            size    start   end     name            size    start   end     count"
  }
  output {
    File out_stdout = stdout()
  }
}