version 1.0

task Bismark2report {
  input {
    File? oslash_output
    Directory? dir
    File? alignment_report
    File? ded_up_report
    File? splitting_report
    File? m_bias_report
    File? nucleotide_report
  }
  command <<<
    bismark2report \
      ~{if defined(oslash_output) then ("-o/--output " +  '"' + oslash_output + '"') else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(alignment_report) then ("--alignment_report " +  '"' + alignment_report + '"') else ""} \
      ~{if defined(ded_up_report) then ("--dedup_report " +  '"' + ded_up_report + '"') else ""} \
      ~{if defined(splitting_report) then ("--splitting_report " +  '"' + splitting_report + '"') else ""} \
      ~{if defined(m_bias_report) then ("--mbias_report " +  '"' + m_bias_report + '"') else ""} \
      ~{if defined(nucleotide_report) then ("--nucleotide_report " +  '"' + nucleotide_report + '"') else ""}
  >>>
  parameter_meta {
    oslash_output: "Name of the output file (optional). If not specified explicitly, the output filename will be derived\\nfrom the Bismark alignment report file. Specifying an output filename only works if the HTML report is\\nto be generated for a single Bismark alignment report (and potentially additional reports)."
    dir: "Output directory. Output is written to the current directory if not specified explicitly."
    alignment_report: "If not specified explicitly, bismark2report attempts to find Bismark report file(s) in the current\\ndirectory and produces a separate HTML report for each mapping report file. Based on the basename of\\nthe Bismark mapping report, bismark2report will also attempt to find the other Bismark reports (see below)\\nfor inclusion into the HTML report. Specifying a Bismark alignment report file is mandatory."
    ded_up_report: "If not specified explicitly, bismark2report attempts to find a deduplication report file with the same\\nbasename as the Bismark mapping report (generated by deduplicate_bismark) in the\\ncurrent working directory. Including a deduplication report is optional, and using the FILE 'none'\\nwill skip this step entirely."
    splitting_report: "If not specified explicitly, bismark2report attempts to find a splitting report file with the same\\nbasename as the Bismark mapping report (generated by the Bismark methylation extractor) in the current\\nworking directory. Including a splitting report is optional, and using the FILE 'none' will skip this\\nstep entirely."
    m_bias_report: "If not specified explicitly, bismark2report attempts to find a single M-bias report file with the same\\nbasename as the Bismark mapping report (generated by the Bismark methylation extractor) in the current\\nworking directory. Including an M-Bias report is optional, and using the FILE 'none' will skip this step\\nentirely."
    nucleotide_report: "If not specified explicitly, bismark2report attempts to find a single nucleotide coverage report file\\nwith the same basename as the Bismark mapping report (generated by Bismark with the option\\n'--nucleotide_coverage') in the current working directory. Including a nucleotide coverage statistics\\nreport is optional, and using the FILE 'none' will skip this report entirely.\\nScript last modified: 03 May 2019\\n"
  }
  output {
    File out_stdout = stdout()
    File out_oslash_output = "${in_oslash_output}"
    Directory out_dir = "${in_dir}"
  }
}