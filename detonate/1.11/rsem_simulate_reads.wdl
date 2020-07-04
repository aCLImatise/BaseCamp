version 1.0

task RsemSimulateReads {
  input {
    String? seed
    Boolean? q
    String reference_name
    String estimated_model_file
    String estimated_isoform_results
    String theta_zero
    String n
    String output_name
  }
  command <<<
    rsem-simulate-reads \
      ~{reference_name} \
      ~{estimated_model_file} \
      ~{estimated_isoform_results} \
      ~{theta_zero} \
      ~{n} \
      ~{output_name} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{true="-q" false="" q}
  >>>
  parameter_meta {
    seed: ""
    q: ""
    reference_name: ""
    estimated_model_file: ""
    estimated_isoform_results: ""
    theta_zero: ""
    n: ""
    output_name: ""
  }
}