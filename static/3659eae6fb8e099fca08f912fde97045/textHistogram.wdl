version 1.0

task TextHistogram {
  input {
    String? binsize
    String? max_bin_count
    String? min_val
    Boolean? log
    Boolean? no_star
    String? col
    String? ave_col
    Boolean? real
    String? autoscale
    Boolean? prob_values
    Boolean? freq
    String? skip
    String in_file
  }
  command <<<
    textHistogram \
      ~{in_file} \
      ~{if defined(binsize) then ("-binSize " +  '"' + binsize + '"') else ""} \
      ~{if defined(max_bin_count) then ("-maxBinCount " +  '"' + max_bin_count + '"') else ""} \
      ~{if defined(min_val) then ("-minVal " +  '"' + min_val + '"') else ""} \
      ~{true="-log" false="" log} \
      ~{true="-noStar" false="" no_star} \
      ~{if defined(col) then ("-col " +  '"' + col + '"') else ""} \
      ~{if defined(ave_col) then ("-aveCol " +  '"' + ave_col + '"') else ""} \
      ~{true="-real" false="" real} \
      ~{if defined(autoscale) then ("-autoScale " +  '"' + autoscale + '"') else ""} \
      ~{true="-probValues" false="" prob_values} \
      ~{true="-freq" false="" freq} \
      ~{if defined(skip) then ("-skip " +  '"' + skip + '"') else ""}
  >>>
  parameter_meta {
    binsize: "- Size of bins, default 1"
    max_bin_count: "- Maximum # of bins, default 25"
    min_val: "- Minimum value to put in histogram, default 0"
    log: "- Do log transformation before plotting"
    no_star: "- Don't draw asterisks"
    col: "- Which column to use. Default 1"
    ave_col: "- A second column to average over. The averages will be output in place of counts of primary column."
    real: "- Data input are real values (default is integer)"
    autoscale: "- autoscale to N # of bins"
    prob_values: "- show prob-Values (density and cum.distr.) (sets -noStar too)"
    freq: "- show frequences instead of counts"
    skip: "- skip N lines before starting, default 0"
    in_file: ""
  }
}