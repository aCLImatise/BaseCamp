version 1.0

task MglexcliSignificance {
  input {
    File? data
    File? weight
    File? null_data
    File? responsibility
    Boolean? v
    String significance
  }
  command <<<
    mglex_cli significance \
      ~{significance} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(null_data) then ("--nulldata " +  '"' + null_data + '"') else ""} \
      ~{if defined(responsibility) then ("--responsibility " +  '"' + responsibility + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    data: "Log-likelihood matrix for which to calculate p-values; default standard input"
    weight: "Weights (sequence length) file"
    null_data: "Log-likelihood matrix with reference (null hypothesis) values"
    responsibility: "Log-likelihood responsibility matrix"
    v: ""
    significance: ""
  }
  output {
    File out_stdout = stdout()
  }
}