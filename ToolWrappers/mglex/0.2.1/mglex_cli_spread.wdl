version 1.0

task MglexcliSpread {
  input {
    File? data
    File? responsibility
    File? weight
    Int? precision
    Boolean? normalize
    Boolean? v
    String spread
  }
  command <<<
    mglex_cli spread \
      ~{spread} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(responsibility) then ("--responsibility " +  '"' + responsibility + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if (normalize) then "--normalize" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    data: "Feature matrix; default standard input"
    responsibility: "Responsibility (weight) matrix file"
    weight: "Weights (sequence length) file for normalization"
    precision: "Output precision; default 2"
    normalize: "Report (weighted) average instead of sum"
    v: ""
    spread: ""
  }
  output {
    File out_stdout = stdout()
  }
}