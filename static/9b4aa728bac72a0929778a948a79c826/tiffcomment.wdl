version 1.0

task Tiffcomment {
  input {
    Boolean? edit
    String? set
    Int file_one
    Int? file_two
  }
  command <<<
    tiffcomment \
      ~{file_one} \
      ~{file_two} \
      ~{if (edit) then "-edit" else ""} \
      ~{if defined(set) then ("-set " +  '"' + set + '"') else ""}
  >>>
  parameter_meta {
    edit: ""
    set: ""
    file_one: ""
    file_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}