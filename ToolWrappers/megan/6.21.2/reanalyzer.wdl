version 1.0

task Reanalyzer {
  input {
    Boolean? input_file_stdin
    Boolean? classify
    Boolean? min_score
    Boolean? max_expected
    Boolean? min_percent_identity
    Boolean? top_percent
    Boolean? min_support_percent
    Boolean? min_support
    Boolean? min_percent_read_cover
    Boolean? min_percent_reference_cover
    Boolean? lca_algorithm
    Boolean? lca_coverage_percent
    Boolean? read_assignment_mode
    Boolean? con_file
    Boolean? paired
    Boolean? properties_file
    Boolean? verbose
    String parameters
  }
  command <<<
    reanalyzer \
      ~{parameters} \
      ~{if (input_file_stdin) then "--input" else ""} \
      ~{if (classify) then "--classify" else ""} \
      ~{if (min_score) then "--minScore" else ""} \
      ~{if (max_expected) then "--maxExpected" else ""} \
      ~{if (min_percent_identity) then "--minPercentIdentity" else ""} \
      ~{if (top_percent) then "--topPercent" else ""} \
      ~{if (min_support_percent) then "--minSupportPercent" else ""} \
      ~{if (min_support) then "--minSupport" else ""} \
      ~{if (min_percent_read_cover) then "--minPercentReadCover" else ""} \
      ~{if (min_percent_reference_cover) then "--minPercentReferenceCover" else ""} \
      ~{if (lca_algorithm) then "--lcaAlgorithm" else ""} \
      ~{if (lca_coverage_percent) then "--lcaCoveragePercent" else ""} \
      ~{if (read_assignment_mode) then "--readAssignmentMode" else ""} \
      ~{if (con_file) then "--conFile" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if (properties_file) then "--propertiesFile" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/megan:6.21.2--h9ee0642_0"
  }
  parameter_meta {
    input_file_stdin: "[string(s)]              Input  file (stdin ok). Mandatory option."
    classify: "Run classification algorithm. Default value: true."
    min_score: "[number]             Min score (-1: no change). Default value: -1.0."
    max_expected: "[number]          Max expected (-1: no change). Default value: -1.0."
    min_percent_identity: "[number]   Min percent identity (-1: no change). Default value: -1.0."
    top_percent: "[number]          Top percent (-1: no change). Default value: -1.0."
    min_support_percent: "[number]   Min support as percent of assigned reads (0: off, -1: no change). Default value: -1.0."
    min_support: "[number]          Min support (0: off, -1; no change). Default value: -1."
    min_percent_read_cover: "[number]   Min percent of read length to be covered by alignments (-1: no change). Default value: -1.0."
    min_percent_reference_cover: "[number]   Min percent of reference length to be covered by alignments (-1: no change). Default value: -1.0."
    lca_algorithm: "[string]        Set the LCA algorithm to use for taxonomic assignment. Default value: naive Legal values: naive, weighted, longReads"
    lca_coverage_percent: "[number]   Set the percent for the LCA to cover (-1: no change). Default value: -1.0."
    read_assignment_mode: "[string]   Set the read assignment mode. Default value: alignedBases in long read mode, readCount else"
    con_file: "[string]              File of contaminant taxa (one Id or name per line)."
    paired: "Reads are paired. Default value: false."
    properties_file: "[string]        Properties file. Default value: /root/.Megan.def"
    verbose: "Echo commandline options and be verbose. Default value: false."
    parameters: "-lg, --longReads                     Parse and analyse as long reads. Default value: false."
  }
  output {
    File out_stdout = stdout()
  }
}