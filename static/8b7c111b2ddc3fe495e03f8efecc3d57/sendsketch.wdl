version 1.0

task Sendsketch.sh {
  input {
    String nucleotides_dot
  }
  command <<<
    sendsketch.sh \
      ~{nucleotides_dot}
  >>>
  parameter_meta {
    nucleotides_dot: "Designed for prokaryotes."
  }
}