version 1.0

task Cpgreport {
  input {
    Boolean? score
  }
  command <<<
    _cpgreport \
      ~{if (score) then "-score" else ""}
  >>>
  parameter_meta {
    score: "integer    [17] This sets the score for each CG\\nsequence found. A value of 17 is more\\nsensitive, but 28 has also been used with\\nsome success. (Integer from 1 to 200)"
  }
  output {
    File out_stdout = stdout()
  }
}