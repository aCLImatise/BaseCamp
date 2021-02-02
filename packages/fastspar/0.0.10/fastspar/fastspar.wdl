version 1.0

task Fastspar {
  input {
    File? otu_table
    File? correlation
    File? covariance
    Int? iterations
    Int? exclusion_iterations
    Float? threshold
    Int? threads
    Int? seed
    Boolean? yes
    Boolean? _versiondisplay_version
  }
  command <<<
    fastspar \
      ~{if defined(otu_table) then ("--otu_table " +  '"' + otu_table + '"') else ""} \
      ~{if defined(correlation) then ("-correlation " +  '"' + correlation + '"') else ""} \
      ~{if defined(covariance) then ("--covariance " +  '"' + covariance + '"') else ""} \
      ~{if defined(iterations) then ("--iterations " +  '"' + iterations + '"') else ""} \
      ~{if defined(exclusion_iterations) then ("--exclusion_iterations " +  '"' + exclusion_iterations + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if (yes) then "--yes" else ""} \
      ~{if (_versiondisplay_version) then "-v" else ""}
  >>>
  parameter_meta {
    otu_table: "OTU input OTU count table"
    correlation: "Correlation output table"
    covariance: "Covariance output table"
    iterations: "Number of interations to perform (default: 50)"
    exclusion_iterations: "Number of exclusion interations to perform (default: 10)"
    threshold: "Correlation strength exclusion threshold (default: 0.1)"
    threads: "Number of threads (default: 1)"
    seed: "Random number generator seed (default: 1)"
    yes: "Assume yes for prompts (default: unset)"
    _versiondisplay_version: "--version\\nDisplay version information and exit\\n"
  }
  output {
    File out_stdout = stdout()
  }
}