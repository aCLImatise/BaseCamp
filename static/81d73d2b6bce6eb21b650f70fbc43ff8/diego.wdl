version 1.0

task Diego.py {
  input {
    String? table
    String? list
    String? base_condition
    String? min_supp
    String? min_samples
    String? significance_threshold
    String? fold_change_threshold
    Boolean? cluster
    String? den_do_gram
    Boolean? random
  }
  command <<<
    diego.py \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(base_condition) then ("--base_condition " +  '"' + base_condition + '"') else ""} \
      ~{if defined(min_supp) then ("--minsupp " +  '"' + min_supp + '"') else ""} \
      ~{if defined(min_samples) then ("--minsamples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(significance_threshold) then ("--significanceThreshold " +  '"' + significance_threshold + '"') else ""} \
      ~{if defined(fold_change_threshold) then ("--foldchangeThreshold " +  '"' + fold_change_threshold + '"') else ""} \
      ~{true="--cluster" false="" cluster} \
      ~{if defined(den_do_gram) then ("--dendogram " +  '"' + den_do_gram + '"') else ""} \
      ~{true="--random" false="" random}
  >>>
  parameter_meta {
    table: "table of splice junction supports per sample with gene information (created with pre_std.py, pre_star.py or pre_segemehl.py)"
    list: "condition to sample relation in the format: condition tab-delimiter sampleName (you can specify a subset of the samples included in the table, however the sampleName has to be the same as used in table) (you can specify a label in the third column that is used (if present) when the clustering mode is executed)"
    base_condition: "specify base condition (direction of change between the two conditions)"
    min_supp: "min support per splice site (at least -d samples have to show this min support)(default:10)"
    min_samples: "min amount of samples showing in at least one of the junctions the min supp (default:3)"
    significance_threshold: "significance level alpha (default 0.01)"
    fold_change_threshold: "abundance change threshold (default 1.0)"
    cluster: "provide -e if clustering should be performed"
    den_do_gram: "prefix specifying the dendogram plot"
    random: "provide -r if random seed should be used (not deterministic mode)"
  }
}