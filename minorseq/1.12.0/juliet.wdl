version 1.0

task Juliet {
  input {
    Boolean? config
    Boolean? mode_phasing
    Boolean? region
    Boolean? drm_only
    Boolean? min_perc
    Boolean? max_perc
    Boolean? sub
    Boolean? del
    Boolean? verbose
    Boolean? debug
    Boolean? emit_tool_contract
    Boolean? resolved_tool_contract
    String source
  }
  command <<<
    juliet \
      ~{source} \
      ~{true="--config" false="" config} \
      ~{true="--mode-phasing" false="" mode_phasing} \
      ~{true="--region" false="" region} \
      ~{true="--drm-only" false="" drm_only} \
      ~{true="--min-perc" false="" min_perc} \
      ~{true="--max-perc" false="" max_perc} \
      ~{true="--sub" false="" sub} \
      ~{true="--del" false="" del} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--debug" false="" debug} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract} \
      ~{true="--resolved-tool-contract" false="" resolved_tool_contract}
  >>>
  parameter_meta {
    config: "Defines genes of interest within the reference for reporting purposes. Enter either 1) the predefined target config \"HIV_HXB2\" or a custom target config through either 2a) the path to the target config JSON file or 2b) the JSON string."
    mode_phasing: "Phase variants and cluster haplotypes."
    region: "Clip reads to this genomic region. Empty means all reads."
    drm_only: "Only report variants that confer drug resistance, as listed in the target configuration file."
    min_perc: "Report only variants whose percentage of the total population exceeds this value. Increasing it helps to remove PCR noise. [0.1]"
    max_perc: "Report only variants whose percentage of the total population is less than this value. Lowering it helps to phase low frequency variants when the highest-frequency variant is different from the reference. [100]"
    sub: "Substitution Rate, specify to override the learned rate. [0]"
    del: "Deletion Rate, specify to override the learned rate. [0]"
    verbose: "Verbose"
    debug: "Debug returns all amino acids, irrelevant of their significance."
    emit_tool_contract: "Emit tool contract."
    resolved_tool_contract: "Use args from resolved tool contract."
    source: "Source BAM or DataSet XML file."
  }
}