version 1.0

task GeneAssignpy {
  input {
    Int? random_seed
    Int? eta_max
    Int? iter_max
    Int? var_max
    File? output_stub
    File? genomes
    File? variant_file
    String scg_cov_file
    String gamma_star_file
    String cov_file
    String epsilon_file
  }
  command <<<
    GeneAssign_py \
      ~{scg_cov_file} \
      ~{gamma_star_file} \
      ~{cov_file} \
      ~{epsilon_file} \
      ~{if defined(random_seed) then ("--random_seed " +  '"' + random_seed + '"') else ""} \
      ~{if defined(eta_max) then ("--eta_max " +  '"' + eta_max + '"') else ""} \
      ~{if defined(iter_max) then ("--iter_max " +  '"' + iter_max + '"') else ""} \
      ~{if defined(var_max) then ("--var_max " +  '"' + var_max + '"') else ""} \
      ~{if defined(output_stub) then ("--output_stub " +  '"' + output_stub + '"') else ""} \
      ~{if defined(genomes) then ("--genomes " +  '"' + genomes + '"') else ""} \
      ~{if defined(variant_file) then ("--variant_file " +  '"' + variant_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    random_seed: "specifies seed for numpy random number generator\\ndefaults to 23724839 applied after random filtering"
    eta_max: "maximum contig contig count for sampler defaults to 2"
    iter_max: "number of Gibbs sampling iterations"
    var_max: "maximum number of variants to user per contig defaults\\nto all (1e10) if unset"
    output_stub: "string specifying output file stubs"
    genomes: "specify validation file of known genome composition"
    variant_file: "specify file of called variants on genes if available"
    scg_cov_file: "input core gene coverages"
    gamma_star_file: "input MAP estimate frequencies"
    cov_file: "mean contig/genes coverages"
    epsilon_file: "predicted transition matrix"
  }
  output {
    File out_stdout = stdout()
    File out_output_stub = "${in_output_stub}"
  }
}