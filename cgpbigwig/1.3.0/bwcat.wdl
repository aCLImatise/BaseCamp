version 1.0

task Bwcat {
  input {
    String? i
  }
  command <<<
    bwcat \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    i: ""
  }
}