version 1.0

task Analyzesketchresults.sh {
  input {
    String in
  }
  command <<<
    analyzesketchresults.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}