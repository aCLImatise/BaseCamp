version 1.0

task AktUnrelated {
  input {
    Boolean? km_in
    Boolean? its
  }
  command <<<
    akt unrelated \
      ~{if (km_in) then "--kmin" else ""} \
      ~{if (its) then "--its" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_in: ":                     threshold for relatedness (0.025)"
    its: ":                      number of iterations to find unrelated (10)"
  }
  output {
    File out_stdout = stdout()
  }
}