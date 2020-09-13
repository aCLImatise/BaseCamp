version 1.0

task Edd {
  input {
    Int? bin_size
    Int? num_trials
    Int? nprocs
    String? fdr
    String? gap_penalty
    File? config_file
    Boolean? write_log_ratios
    Boolean? write_bin_scores
  }
  command <<<
    edd \
      ~{if defined(bin_size) then ("--bin-size " +  '"' + bin_size + '"') else ""} \
      ~{if defined(num_trials) then ("--num-trials " +  '"' + num_trials + '"') else ""} \
      ~{if defined(nprocs) then ("--nprocs " +  '"' + nprocs + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(gap_penalty) then ("--gap-penalty " +  '"' + gap_penalty + '"') else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (write_log_ratios) then "--write-log-ratios" else ""} \
      ~{if (write_bin_scores) then "--write-bin-scores" else ""}
  >>>
  parameter_meta {
    bin_size: "An integer specifying the bin size in KB. Will auto\\nselect bin size based on input data if not specified."
    num_trials: "Number of trials in monte carlo simulation"
    nprocs: "Number of processes to use for the monte carlo\\nsimulation. One processes per physical CPU core is\\nrecommended."
    fdr: ""
    gap_penalty: "Leave unspecificed for auto-estimation. Adjusts how\\nsensitive EDD is to heterogeneity within domains.\\nDepends on Signal/Noise ratio of source files and on\\nthe interests of the researcher. A \\\"low\\\" value favors\\nlarge enriched domains with more heterogeneity. A\\n\\\"high\\\" value favors smaller enriched domains devoid of\\nheterogeneity."
    config_file: "Path to user specified EDD configuration file. See EDD\\nmanual section about configuration for more\\ninformation."
    write_log_ratios: "Write log ratios to file."
    write_bin_scores: "Write bin scores to file."
  }
  output {
    File out_stdout = stdout()
  }
}