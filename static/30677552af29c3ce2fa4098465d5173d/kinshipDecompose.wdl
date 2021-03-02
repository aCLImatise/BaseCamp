version 1.0

task KinshipDecompose {
  input {
    Boolean? in
    Boolean? out
  }
  command <<<
    kinshipDecompose \
      ~{if (in) then "--in" else ""} \
      ~{if (out) then "--out" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ": Input kinship file"
    out: ": Output prefix for autosomal kinship calculation"
  }
  output {
    File out_stdout = stdout()
  }
}