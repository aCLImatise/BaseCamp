version 1.0

task Mwcontam {
  input {
    Boolean? tolerance
  }
  command <<<
    mwcontam \
      ~{if (tolerance) then "-tolerance" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tolerance: "float      [50.0] Ppm tolerance (Any numeric value)"
  }
  output {
    File out_stdout = stdout()
  }
}