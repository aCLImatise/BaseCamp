version 1.0

task Rsemsimulatereads {
  input {
    Int? seed
    Boolean? set_it_will
    String reference_name
    String estimated_model_file
    String estimated_isoform_results
    Int theta_zero
    String n
    String output_name
  }
  command <<<
    rsem_simulate_reads \
      ~{reference_name} \
      ~{estimated_model_file} \
      ~{estimated_isoform_results} \
      ~{theta_zero} \
      ~{n} \
      ~{output_name} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (set_it_will) then "-q" else ""}
  >>>
  parameter_meta {
    seed: ": Set seed for the random number generator used in simulation. The seed should be a 32-bit unsigned integer."
    set_it_will: ": Set it will stop outputting intermediate information."
    reference_name: ""
    estimated_model_file: ""
    estimated_isoform_results: ""
    theta_zero: ""
    n: ""
    output_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}