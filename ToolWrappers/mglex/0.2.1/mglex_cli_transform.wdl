version 1.0

task MglexcliTransform {
  input {
    File? data
    Int? precision
    Float? beta
    Boolean? raw_probability
    Boolean? maximum_likelihood
    Boolean? posterior
    Boolean? posterior_ratio
    Boolean? logarithm
    Float? class_index
    Boolean? v
    String transform
  }
  command <<<
    mglex_cli transform \
      ~{transform} \
      ~{if defined(data) then ("--data " +  '"' + data + '"') else ""} \
      ~{if defined(precision) then ("--precision " +  '"' + precision + '"') else ""} \
      ~{if defined(beta) then ("--beta " +  '"' + beta + '"') else ""} \
      ~{if (raw_probability) then "--raw-probability" else ""} \
      ~{if (maximum_likelihood) then "--maximum-likelihood" else ""} \
      ~{if (posterior) then "--posterior" else ""} \
      ~{if (posterior_ratio) then "--posterior-ratio" else ""} \
      ~{if (logarithm) then "--logarithm" else ""} \
      ~{if defined(class_index) then ("--class-index " +  '"' + class_index + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    data: "Likelihood matrix; default standard input"
    precision: "Output precision; default 2"
    beta: "Beta correction factor (e.g. determined via MSE evaluation); default 1.0"
    raw_probability: "Show output in normal representation (small number become zero)"
    maximum_likelihood: "Give only the class(es) with the maximum likelihood a non-zero probability"
    posterior: "Normalize the likelihood values over classes (uniform class prior)"
    posterior_ratio: "Divide all likelihoods by the maximum likelihood"
    logarithm: "Convert from simple to logarithmic format"
    class_index: "Report only class indices (one-based) with likelihoods above threshold; default 1.0"
    v: ""
    transform: "[--data <file>] [--beta <float> --precision <int>]\\n[--logarithm|--maximum-likelihood|--posterior|--posterior-ratio|--class-index <float>]\\n[--raw-probability]"
  }
  output {
    File out_stdout = stdout()
  }
}