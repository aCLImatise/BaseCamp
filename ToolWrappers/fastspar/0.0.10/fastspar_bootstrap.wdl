version 1.0

task FastsparBootstrap {
  input {
    File? otu_table
    File? number
    String? prefix
    Int? threads
    Int? seed
    String bootstraps
  }
  command <<<
    fastspar_bootstrap \
      ~{bootstraps} \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""} \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    otu_table: "OTU input table"
    number: "Number of bootstrap samples to generate"
    prefix: "Prefix out bootstrap output files"
    threads: "Number of threads (default: 1)"
    seed: "Random number generator seed (default: 1)"
    bootstraps: ""
  }
  output {
    File out_stdout = stdout()
  }
}