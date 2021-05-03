version 1.0

task RadsexMap {
  input {
    Boolean? markers_file
    File? output_file
    Boolean? pop_map
    Boolean? genome_file
    Boolean? min_depth
    Boolean? groups
    Boolean? min_quality
    Boolean? min_frequency
    Boolean? sign_if_threshold
    Boolean? disable_correction
  }
  command <<<
    radsex map \
      ~{if (markers_file) then "--markers-file" else ""} \
      ~{if (output_file) then "--output-file" else ""} \
      ~{if (pop_map) then "--popmap" else ""} \
      ~{if (genome_file) then "--genome-file" else ""} \
      ~{if (min_depth) then "--min-depth" else ""} \
      ~{if (groups) then "--groups" else ""} \
      ~{if (min_quality) then "--min-quality" else ""} \
      ~{if (min_frequency) then "--min-frequency" else ""} \
      ~{if (sign_if_threshold) then "--signif-threshold" else ""} \
      ~{if (disable_correction) then "--disable-correction" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/radsex:1.2.0--h2e03b76_0"
  }
  parameter_meta {
    markers_file: "TEXT:FILE                 Path to a set of markers to align, either a depth table from \\\"process\\\", \\\"signif\\\", or \\\"subset\\\" or a fasta file from \\\"subset\\\" or \\\"signif\\\"    [REQUIRED]"
    output_file: "TEXT                      Path to the output file (mapping position, group bias, and probability of association with group for all aligned markers)                  [REQUIRED]"
    pop_map: "TEXT:FILE                 Path to a tabulated file specifying groups for all individuals (population map)                                                            [REQUIRED]"
    genome_file: "TEXT:FILE                 Path to the genome file in fasta format                                                                                                    [REQUIRED]"
    min_depth: "UINT:INT in [1 - 9999]    Minimum depth to consider a marker present in an individual                                                                                [1]"
    groups: "TEXT                      Names of the groups to compare if there are more than two groups in the popmap (--groups group1,group2)"
    min_quality: "UINT:INT in [0 - 60]      Minimum mapping quality to retain a read                                                                                                   [20]"
    min_frequency: "FLOAT:FLOAT in [0 - 1]    Minimum frequency of individuals to retain a marker                                                                                        [0.1]"
    sign_if_threshold: "FLOAT:FLOAT in [0 - 1]    P-value threshold to consider a marker significantly associated with a phenotypic group                                                    [0.05]"
    disable_correction: "If set, Bonferroni correction will NOT be used when assessing significance of association with phenotypic group"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}