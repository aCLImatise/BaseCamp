version 1.0

task WordLine {
  input {
    Boolean? c_sym
  }
  command <<<
    wordLine \
      ~{if (c_sym) then "-csym" else ""}
  >>>
  parameter_meta {
    c_sym: "- Break up words based on C symbol rules rather than white space"
  }
  output {
    File out_stdout = stdout()
  }
}