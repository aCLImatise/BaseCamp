version 1.0

task Sketch.sh {
  input {
    String nucleotides_dot
  }
  command <<<
    sketch.sh \
      ~{nucleotides_dot}
  >>>
  parameter_meta {
    nucleotides_dot: "Designed for prokaryotes."
  }
}