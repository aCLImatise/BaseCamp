version 1.0

task TextHistogram {
  input {
    Int? binsize
    Int? max_bin_count
    Int? min_val
    Boolean? log
    Boolean? no_star
    Int? col
    String? ave_col
    Boolean? real
    String? autoscale
    Boolean? prob_values
    Boolean? freq
    Int? skip
  }
  command <<<
    textHistogram \
      ~{if defined(binsize) then ("-binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(max_bin_count) then ("-maxBinCount " +  '"' + max_bin_count + '"') else ""} \
      ~{if defined(min_val) then ("-minVal " +  '"' + min_val + '"') else ""} \
      ~{if (log) then "-log" else ""} \
      ~{if (no_star) then "-noStar" else ""} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if defined(ave_col) then ("-aveCol " +  '"' + ave_col + '"') else ""} \
      ~{if (real) then "-real" else ""} \
      ~{if defined(autoscale) then ("-autoScale " +  '"' + autoscale + '"') else ""} \
      ~{if (prob_values) then "-probValues" else ""} \
      ~{if (freq) then "-freq" else ""} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    binsize: "- Size of bins, default 1"
    max_bin_count: "- Maximum # of bins, default 25"
    min_val: "- Minimum value to put in histogram, default 0"
    log: "- Do log transformation before plotting"
    no_star: "- Don't draw asterisks"
    col: "- Which column to use. Default 1"
    ave_col: "- A second column to average over. The averages\\nwill be output in place of counts of primary column."
    real: "- Data input are real values (default is integer)"
    autoscale: "- autoscale to N # of bins"
    prob_values: "- show prob-Values (density and cum.distr.) (sets -noStar too)"
    freq: "- show frequences instead of counts"
    skip: "- skip N lines before starting, default 0"
  }
  output {
    File out_stdout = stdout()
  }
}