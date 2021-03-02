version 1.0

task Hed {
  input {
    Int? string_one
    Int? string_two
    Boolean? all
    Boolean? backtrace
  }
  command <<<
    hed \
      ~{if defined(string_one) then ("--string1 " +  '"' + string_one + '"') else ""} \
      ~{if defined(string_two) then ("--string2 " +  '"' + string_two + '"') else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (backtrace) then "--backtrace" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    string_one: "first string. Use quotation marks around your string\\n(e.g. \\\"STRING\\\")for the empty string or strings with\\nspecial characters"
    string_two: "second string"
    all: "show all optimal subsequences"
    backtrace: "print transformation steps"
  }
  output {
    File out_stdout = stdout()
  }
}