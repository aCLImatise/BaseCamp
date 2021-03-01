version 1.0

task ProsoloEstimatemutationrate {
  input {
    File? fit
    Float? max_af
    Float? min_af
    String pro_solo
  }
  command <<<
    prosolo estimate_mutation_rate \
      ~{pro_solo} \
      ~{if defined(fit) then ("--fit " +  '"' + fit + '"') else ""} \
      ~{if defined(max_af) then ("--max-af " +  '"' + max_af + '"') else ""} \
      ~{if defined(min_af) then ("--min-af " +  '"' + min_af + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fit: "Path to file that will contain observations and the parameters of the fitted model as JSON."
    max_af: "Maximum allele frequency to consider [0.25]."
    min_af: "Minimum allele frequency to consider [0.12]."
    pro_solo: ""
  }
  output {
    File out_stdout = stdout()
  }
}