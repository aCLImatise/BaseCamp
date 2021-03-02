version 1.0

task InStrainCheckDeps {
  input {
    String in_strain
  }
  command <<<
    inStrain check_deps \
      ~{in_strain}
  >>>
  runtime {
    docker: "quay.io/biocontainers/instrain:1.5.1--py_0"
  }
  parameter_meta {
    in_strain: ""
  }
  output {
    File out_stdout = stdout()
  }
}