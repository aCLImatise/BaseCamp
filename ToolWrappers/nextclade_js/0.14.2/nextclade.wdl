version 1.0

task Nextclade {
  input {
    Boolean? jobs
    Boolean? input_fast_a
    Boolean? input_root_seq
    Boolean? input_tree
    Boolean? input_qc_config
    Boolean? input_gene_map
    Boolean? input_pcr_primers
    File? output_json
    File? output_csv
    File? output_tsv_clades_only
    File? output_tsv
    File? output_tree
  }
  command <<<
    nextclade \
      ~{if (jobs) then "--jobs" else ""} \
      ~{if (input_fast_a) then "--input-fasta" else ""} \
      ~{if (input_root_seq) then "--input-root-seq" else ""} \
      ~{if (input_tree) then "--input-tree" else ""} \
      ~{if (input_qc_config) then "--input-qc-config" else ""} \
      ~{if (input_gene_map) then "--input-gene-map" else ""} \
      ~{if (input_pcr_primers) then "--input-pcr-primers" else ""} \
      ~{if (output_json) then "--output-json" else ""} \
      ~{if (output_csv) then "--output-csv" else ""} \
      ~{if (output_tsv_clades_only) then "--output-tsv-clades-only" else ""} \
      ~{if (output_tsv) then "--output-tsv" else ""} \
      ~{if (output_tree) then "--output-tree" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nextclade_js:0.14.2--h9ee0642_0"
  }
  parameter_meta {
    jobs: "Number of CPU threads used by the algorithm. If not specified, using number of logical CPU cores, as detected by Node.js runtime  [number] [default: 2]"
    input_fast_a: "Path to a .fasta or a .txt file with input sequences  [string] [required]"
    input_root_seq: "Path to plain text file containing custom root sequence  [string]"
    input_tree: "(optional) Path to Auspice JSON v2 file containing custom reference tree. See https://nextstrain.org/docs/bioinformatics/data-formats  [string]"
    input_qc_config: "(optional) Path to a JSON file containing custom configuration of Quality Control rules.\\nFor an example format see: https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/qcRulesConfig.ts  [string]"
    input_gene_map: "(optional) Path to a JSON file containing custom gene map. Gene map (sometimes also called \\\"gene annotations\\\") is used to resolve aminoacid changes in genes.\\nFor an example see https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/geneMap.json  [string]"
    input_pcr_primers: "(optional) Path to a CSV file containing a list of custom PCR primer sites. These are used to report mutations in these sites.\\nFor an example see https://github.com/nextstrain/nextclade/blob/20a9fda5b8046ce26669de2023770790c650daae/packages/web/src/algorithms/defaults/sars-cov-2/pcrPrimers.csv  [string]"
    output_json: "Path to output JSON results file  [string]"
    output_csv: "Path to output CSV results file  [string]"
    output_tsv_clades_only: "Path to output CSV clades-only file  [string]"
    output_tsv: "Path to output TSV results file  [string]"
    output_tree: "Path to output Auspice JSON V2 results file. See https://nextstrain.org/docs/bioinformatics/data-formats  [string]"
  }
  output {
    File out_stdout = stdout()
    File out_output_json = "${in_output_json}"
    File out_output_csv = "${in_output_csv}"
    File out_output_tsv_clades_only = "${in_output_tsv_clades_only}"
    File out_output_tsv = "${in_output_tsv}"
    File out_output_tree = "${in_output_tree}"
  }
}