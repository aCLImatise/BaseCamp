version 1.0

task Clinker {
  input {
    Array[String] ranges
    Boolean? no_align
    Float? identity
    Int? jobs
    File? session
    Int? json_indent
    File? force
    File? save_alignments_file
    Boolean? plot_cluster_alignments
    String? delimiter
    Float? decimals
    Boolean? hide_link_headers
    Boolean? hide_aln_headers
    Boolean? use_file_order
    String files
  }
  command <<<
    clinker \
      ~{files} \
      ~{if defined(ranges) then ("--ranges " +  '"' + ranges + '"') else ""} \
      ~{if (no_align) then "--no_align" else ""} \
      ~{if defined(identity) then ("--identity " +  '"' + identity + '"') else ""} \
      ~{if defined(jobs) then ("--jobs " +  '"' + jobs + '"') else ""} \
      ~{if defined(session) then ("--session " +  '"' + session + '"') else ""} \
      ~{if defined(json_indent) then ("--json_indent " +  '"' + json_indent + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(save_alignments_file) then ("--output " +  '"' + save_alignments_file + '"') else ""} \
      ~{if (plot_cluster_alignments) then "-p" else ""} \
      ~{if defined(delimiter) then ("--delimiter " +  '"' + delimiter + '"') else ""} \
      ~{if defined(decimals) then ("--decimals " +  '"' + decimals + '"') else ""} \
      ~{if (hide_link_headers) then "--hide_link_headers" else ""} \
      ~{if (hide_aln_headers) then "--hide_aln_headers" else ""} \
      ~{if (use_file_order) then "--use_file_order" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/clinker-py:0.0.20--pyh3252c3a_0"
  }
  parameter_meta {
    ranges: "Scaffold extraction ranges. If a range is specified,\\nonly features within the range will be extracted from\\nthe scaffold. Ranges should be formatted like:\\nscaffold:start-end (e.g. scaffold_1:15000-40000)"
    no_align: "Do not align clusters"
    identity: "Minimum alignment sequence identity [default: 0.3]"
    jobs: "Number of alignments to run in parallel (0 to use the\\nnumber of CPUs) [default: 0]"
    session: "Path to clinker session"
    json_indent: "Number of spaces to indent JSON [default: none]"
    force: "Overwrite previous output file"
    save_alignments_file: "Save alignments to file"
    plot_cluster_alignments: "[PLOT], --plot [PLOT]\\nPlot cluster alignments using clustermap.js. If a path\\nis given, clinker will generate a portable HTML file\\nat that path. Otherwise, the plot will be served\\ndynamically using Python's HTTP server."
    delimiter: "Character to delimit output by [default: human\\nreadable]"
    decimals: "Number of decimal places in output [default: 2]"
    hide_link_headers: "Hide alignment column headers"
    hide_aln_headers: "Hide alignment cluster name headers"
    use_file_order: "Display clusters in order of input files"
    files: "Gene cluster GenBank files"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}