version 1.0

task LynerDendro {
  input {
    Int? axis
  }
  command <<<
    lyner dendro \
      ~{if defined(axis) then ("--axis " +  '"' + axis + '"') else ""}
  >>>
  parameter_meta {
    axis: "RANGE\\n-m, --methods LIST\\n--mode [consensus|each]\\n-c, --num-components LIST\\n-r, --num-runs INTEGER\\n--help                     Show this message and exit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}