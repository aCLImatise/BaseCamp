version 1.0

task HaystacAnalyse {
  input {
    String? mode
    File? database
    File? sample
    File? path_analysis_output
    String? genera
    Float? min_prob
    Float? mismatch_probability
    Int? cores
    Int? mem
    Directory? unlock
    Boolean? debug
    Boolean? snake_make
  }
  command <<<
    haystac analyse \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(sample) then ("--sample " +  '"' + sample + '"') else ""} \
      ~{if defined(path_analysis_output) then ("--output " +  '"' + path_analysis_output + '"') else ""} \
      ~{if defined(genera) then ("--genera " +  '"' + genera + '"') else ""} \
      ~{if defined(min_prob) then ("--min-prob " +  '"' + min_prob + '"') else ""} \
      ~{if defined(mismatch_probability) then ("--mismatch-probability " +  '"' + mismatch_probability + '"') else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(mem) then ("--mem " +  '"' + mem + '"') else ""} \
      ~{if (unlock) then "--unlock" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (snake_make) then "--snakemake" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/haystac:0.3.2--py36_0"
  }
  parameter_meta {
    mode: "Analysis mode for the selected sample [filter, align,\\nlikelihoods, probabilities, abundances, reads,\\nmapdamage]"
    database: "Path to the database output directory"
    sample: "Path to the sample output directory"
    path_analysis_output: "Path to the analysis output directory"
    genera: "[<genus> ...]\\nList of genera to restrict the abundance calculations\\n(default: [])"
    min_prob: "Minimum posterior probability to assign an aligned\\nread to a given species (default: 0.75)"
    mismatch_probability: "Base mismatch probability (default: 0.05)"
    cores: "Maximum number of CPU cores to use (default: 8)"
    mem: "Maximum memory (MB) to use (default: 16012)"
    unlock: "Unlock the output directory following a crash or hard\\nrestart (default: False)"
    debug: "Enable debugging mode (default: False)"
    snake_make: "'<json>'  Pass additional flags to the `snakemake` scheduler."
  }
  output {
    File out_stdout = stdout()
    File out_database = "${in_database}"
    File out_sample = "${in_sample}"
    File out_path_analysis_output = "${in_path_analysis_output}"
    Directory out_unlock = "${in_unlock}"
  }
}