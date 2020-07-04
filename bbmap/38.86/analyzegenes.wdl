version 1.0

task Analyzegenes.sh {
  input {
    String in
  }
  command <<<
    analyzegenes.sh \
      ~{in}
  >>>
  parameter_meta {
    in: ""
  }
}