version 1.0

task Famsa {
  input {
    Int? threads_means_default
    Boolean? verbose_mode_show
    Boolean? gt
    File? gt_export
    File? dist_export
    String input_file
  }
  command <<<
    famsa \
      ~{input_file} \
      ~{if defined(threads_means_default) then ("-t " +  '"' + threads_means_default + '"') else ""} \
      ~{if (verbose_mode_show) then "-v" else ""} \
      ~{if (gt) then "-gt" else ""} \
      ~{if (gt_export) then "-gt_export" else ""} \
      ~{if (dist_export) then "-dist_export" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    threads_means_default: "- no. of threads, 0 means all available (default: 0)"
    verbose_mode_show: "- verbose mode, show timing information (default: disabled)"
    gt: "<sl | upgma | import <file>> - guide tree method (default: sl):\\n* sl - single linkage\\n* upgma - UPGMA\\n* import <file> - imported from a Newick file"
    gt_export: "- export a guide tree to output file in Newick format"
    dist_export: "- export a distance matrix to output file in CSV format"
    input_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_gt_export = "${in_gt_export}"
    File out_dist_export = "${in_dist_export}"
  }
}