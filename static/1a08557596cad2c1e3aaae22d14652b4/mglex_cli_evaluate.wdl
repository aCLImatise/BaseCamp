version 1.0

task MglexcliEvaluate {
  input {
    File? data
    File? responsibility
    File? weight
    String? method
    Int? subsample
    Int? random_seed
    Boolean? fromtostep__beta
    Boolean? v
    String cluster_dot
  }
  command <<<
    mglex_cli evaluate \
      ~{cluster_dot} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(responsibility) then ("--responsibility " +  '"' + responsibility + '"') else ""} \
      ~{if defined(weight) then ("--weight " +  '"' + weight + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(random_seed) then ("--random-seed " +  '"' + random_seed + '"') else ""} \
      ~{if (fromtostep__beta) then "-b" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    data: "Likelihood matrix; default standard input"
    responsibility: "Responsibility (weight) matrix file"
    weight: "Weights (sequence length) file"
    method: "Evaluation method; one of \\\"mse\\\", \\\"mse-flex\\\",\\n\\\"co-clustering\\\", \\\"separation\\\""
    subsample: "Subsample this number of data points for faster calculation"
    random_seed: "Seed for random operations"
    fromtostep__beta: "<from(:to:step)>, --beta <from(:to:step)>  Beta correction factor(s) to evaluate; default 1.0"
    v: ""
    cluster_dot: "Method \\\"separation\\\":"
  }
  output {
    File out_stdout = stdout()
  }
}