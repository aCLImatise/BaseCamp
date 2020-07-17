version 1.0

task Comparesketch.sh {
  input {
    String nucleotides_dot
  }
  command <<<
    comparesketch.sh \
      ~{nucleotides_dot}
  >>>
  parameter_meta {
    nucleotides_dot: "Designed for prokaryotes."
  }
}