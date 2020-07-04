version 1.0

task Bbsketch.sh {
  input {
    String nucleotides_dot
  }
  command <<<
    bbsketch.sh \
      ~{nucleotides_dot}
  >>>
  parameter_meta {
    nucleotides_dot: "Designed for prokaryotes."
  }
}