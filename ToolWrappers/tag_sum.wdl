version 1.0

task TagSum {
  input {
    Int gff_three
  }
  command <<<
    tag sum \
      ~{gff_three}
  >>>
  parameter_meta {
    gff_three: "input file"
  }
  output {
    File out_stdout = stdout()
  }
}