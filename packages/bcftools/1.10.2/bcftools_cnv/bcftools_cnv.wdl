version 1.0

task BcftoolsCnv {
  input {
    Float? control_sample
    Boolean? aberrant
    Float? baf_weight
    Boolean? baf_dev
    Float? err_prob
    Boolean? lrr_dev
    Float? lrr_weight
    Int? lrr_smooth_win
    Float? optimize
    Float? same_prob
    Float? xy_prob
    File file_dot_vcf
  }
  command <<<
    bcftools cnv \
      ~{file_dot_vcf} \
      ~{if defined(control_sample) then ("--control-sample " +  '"' + control_sample + '"') else ""} \
      ~{if (aberrant) then "--aberrant" else ""} \
      ~{if defined(baf_weight) then ("--BAF-weight " +  '"' + baf_weight + '"') else ""} \
      ~{if (baf_dev) then "--BAF-dev" else ""} \
      ~{if defined(err_prob) then ("--err-prob " +  '"' + err_prob + '"') else ""} \
      ~{if (lrr_dev) then "--LRR-dev" else ""} \
      ~{if defined(lrr_weight) then ("--LRR-weight " +  '"' + lrr_weight + '"') else ""} \
      ~{if defined(lrr_smooth_win) then ("--LRR-smooth-win " +  '"' + lrr_smooth_win + '"') else ""} \
      ~{if defined(optimize) then ("--optimize " +  '"' + optimize + '"') else ""} \
      ~{if defined(same_prob) then ("--same-prob " +  '"' + same_prob + '"') else ""} \
      ~{if defined(xy_prob) then ("--xy-prob " +  '"' + xy_prob + '"') else ""}
  >>>
  parameter_meta {
    control_sample: "optional control sample name to highlight differences\\n-f, --AF-file <file>               read allele frequencies from file (CHR\\tPOS\\tREF,ALT\\tAF)\\n-o, --output-dir <path>\\n-p, --plot-threshold <float>       plot aberrant chromosomes with quality at least 'float'\\n-r, --regions <region>             restrict to comma-separated list of regions\\n-R, --regions-file <file>          restrict to regions listed in a file\\n-s, --query-sample <string>        query samply name\\n-t, --targets <region>             similar to -r but streams rather than index-jumps\\n-T, --targets-file <file>          similar to -R but streams rather than index-jumps"
    aberrant: "<float[,float]>     fraction of aberrant cells in query and control [1.0,1.0]"
    baf_weight: "relative contribution from BAF [1]"
    baf_dev: "<float[,float]>      expected BAF deviation in query and control [0.04,0.04]"
    err_prob: "uniform error probability [1e-4]"
    lrr_dev: "<float[,float]>      expected LRR deviation [0.2,0.2]"
    lrr_weight: "relative contribution from LRR [0.2]"
    lrr_smooth_win: "window of LRR moving average smoothing [10]"
    optimize: "estimate fraction of aberrant cells down to <float> [1.0]"
    same_prob: "prior probability of -s/-c being the same [0.5]"
    xy_prob: "P(x|y) transition probability [1e-9]"
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}