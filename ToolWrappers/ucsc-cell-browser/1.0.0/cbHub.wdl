version 1.0

task CbHub {
  input {
    Boolean? in_it
    File? in_conf
    String? meta_fname
    String? expr_matrix
    String? cluster_field
    Directory? outdir
    String? stat
    Int? perc
    Boolean? debug
    Boolean? skip_bar_chart
  }
  command <<<
    cbHub \
      ~{if (in_it) then "--init" else ""} \
      ~{if defined(in_conf) then ("--inConf " +  '"' + in_conf + '"') else ""} \
      ~{if defined(meta_fname) then ("--metaFname " +  '"' + meta_fname + '"') else ""} \
      ~{if defined(expr_matrix) then ("--exprMatrix " +  '"' + expr_matrix + '"') else ""} \
      ~{if defined(cluster_field) then ("--clusterField " +  '"' + cluster_field + '"') else ""} \
      ~{if defined(outdir) then ("--outDir " +  '"' + outdir + '"') else ""} \
      ~{if defined(stat) then ("--stat " +  '"' + stat + '"') else ""} \
      ~{if defined(perc) then ("--perc " +  '"' + perc + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (skip_bar_chart) then "--skipBarchart" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    in_it: "write a sample hub.conf to the current directory"
    in_conf: "a hub.conf input file to read all options from.\\n(settings can also be specified via cellbrowser.conf\\nin the current directory.) default hub.conf"
    meta_fname: "a csv or tsv matrix, one row per cell"
    expr_matrix: "exprMatrix is a tsv or csv expression matrix, one line\\nper cell"
    cluster_field: "field in expr matrix that contains the cluster name"
    outdir: "the output directory for the hub, default is none"
    stat: "how to summarize data values of a cluster, one of:\\nmedian, mean, percentile, nonzero. default is median"
    perc: "if stat is 'percentile', which percentile to use. a\\nnumber 0-100. default is 90"
    debug: "show debug messages"
    skip_bar_chart: "do not create the bar chart graph"
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}