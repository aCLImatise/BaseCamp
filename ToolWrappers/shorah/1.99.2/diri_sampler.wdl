version 1.0

task DiriSampler {
  input {
    String? a
    Int? k
    String files
    String parameters
  }
  command <<<
    diri_sampler \
      ~{files} \
      ~{parameters} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/shorah:1.99.2--py38h032b7f5_1"
  }
  parameter_meta {
    a: "not compat. with -k"
    k: "not compat. with -K"
    files: "-i <input data file>"
    parameters: "-j <sampling iterations>"
  }
  output {
    File out_stdout = stdout()
  }
}