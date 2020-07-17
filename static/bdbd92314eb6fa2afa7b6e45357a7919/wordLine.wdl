version 1.0

task WordLine {
  input {
    Boolean? c_sym
    String in_file
  }
  command <<<
    wordLine \
      ~{in_file} \
      ~{true="-csym" false="" c_sym}
  >>>
  parameter_meta {
    c_sym: "- Break up words based on C symbol rules rather than white space"
    in_file: ""
  }
}