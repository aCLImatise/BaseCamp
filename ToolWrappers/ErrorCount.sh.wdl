version 1.0

task ErrorCountsh {
  input {
    Int? individuals_equals_genotypes
  }
  command <<<
    ErrorCount_sh \
      ~{if defined(individuals_equals_genotypes) then ("-9 " +  '"' + individuals_equals_genotypes + '"') else ""}
  >>>
  parameter_meta {
    individuals_equals_genotypes: "of individuals and 0 equals 0 total genotypes"
  }
  output {
    File out_stdout = stdout()
  }
}