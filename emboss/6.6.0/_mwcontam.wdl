version 1.0

task Mwcontam {
  input {
    Boolean? tolerance
  }
  command <<<
    _mwcontam \
      ~{if (tolerance) then "-tolerance" else ""}
  >>>
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
  output {
    File out_stdout = stdout()
  }
}