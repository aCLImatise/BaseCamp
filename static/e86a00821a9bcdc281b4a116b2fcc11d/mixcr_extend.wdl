version 1.0

task MixcrExtend {
  input {
    String? j_anchor
    Int? min_j_score
    Int? min_v_score
    Boolean? overwrite_if_required
    String? v_anchor
    Boolean? verbose
    String? chains
    File? json_report
    Boolean? no_warnings
    String? quality
    File? report
    String? threads
    Boolean? f
    String chains_dot
  }
  command <<<
    mixcr extend \
      ~{chains_dot} \
      ~{if defined(j_anchor) then ("--j-anchor " +  '"' + j_anchor + '"') else ""} \
      ~{if defined(min_j_score) then ("--min-j-score " +  '"' + min_j_score + '"') else ""} \
      ~{if defined(min_v_score) then ("--min-v-score " +  '"' + min_v_score + '"') else ""} \
      ~{if (overwrite_if_required) then "--overwrite-if-required" else ""} \
      ~{if defined(v_anchor) then ("--v-anchor " +  '"' + v_anchor + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(chains) then ("--chains " +  '"' + chains + '"') else ""} \
      ~{if defined(json_report) then ("--json-report " +  '"' + json_report + '"') else ""} \
      ~{if (no_warnings) then "--no-warnings" else ""} \
      ~{if defined(quality) then ("--quality " +  '"' + quality + '"') else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    j_anchor: "J extension anchor point."
    min_j_score: "Minimal J hit score alignment to perform right extension."
    min_v_score: "Minimal V hit score to perform left extension."
    overwrite_if_required: "Overwrite output file if it is corrupted or if it was generated from\\ndifferent input file or with different parameters. -f / --force-overwrite\\noverrides this option."
    v_anchor: "V extension anchor point."
    verbose: "Verbose warning messages."
    chains: "Apply procedure only to alignments with specific immunological-receptor"
    json_report: "JSON formatted report file"
    no_warnings: "Suppress all warning messages."
    quality: "Quality score value to assign imputed sequences"
    report: "Report file (human readable version, see -j / --json-report for machine\\nreadable report)"
    threads: "Processing threads"
    f: ""
    chains_dot: "-f, --force-overwrite     Force overwrite of output file(s)."
  }
  output {
    File out_stdout = stdout()
  }
}