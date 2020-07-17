version 1.0

task Hed {
  input {
    String? string_one
    String? string_two
    Boolean? all
    Boolean? backtrace
  }
  command <<<
    hed \
      ~{if defined(string_one) then ("--string1 " +  '"' + string_one + '"') else ""} \
      ~{if defined(string_two) then ("--string2 " +  '"' + string_two + '"') else ""} \
      ~{true="--all" false="" all} \
      ~{true="--backtrace" false="" backtrace}
  >>>
  parameter_meta {
    string_one: "first string. Use quotation marks around your string (e.g. \"STRING\")for the empty string or strings with special characters"
    string_two: "second string"
    all: "show all optimal subsequences"
    backtrace: "print transformation steps"
  }
}