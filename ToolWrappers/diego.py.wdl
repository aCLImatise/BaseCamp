version 1.0

task Diegopy {
  input {
    String? table
    String? list
    String? base_condition
    Int? min_supp
    Int? min_samples
    Float? significance_threshold
    Float? fold_change_threshold
    Boolean? cluster
    String? den_do_gram
    Boolean? random
  }
  command <<<
    diego_py \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(base_condition) then ("--base_condition " +  '"' + base_condition + '"') else ""} \
      ~{if defined(min_supp) then ("--minsupp " +  '"' + min_supp + '"') else ""} \
      ~{if defined(min_samples) then ("--minsamples " +  '"' + min_samples + '"') else ""} \
      ~{if defined(significance_threshold) then ("--significanceThreshold " +  '"' + significance_threshold + '"') else ""} \
      ~{if defined(fold_change_threshold) then ("--foldchangeThreshold " +  '"' + fold_change_threshold + '"') else ""} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(den_do_gram) then ("--dendogram " +  '"' + den_do_gram + '"') else ""} \
      ~{if (random) then "--random" else ""}
  >>>
  parameter_meta {
    table: "table of splice junction supports per sample with gene\\ninformation (created with pre_std.py, pre_star.py or\\npre_segemehl.py)"
    list: "condition to sample relation in the format: condition\\ntab-delimiter sampleName (you can specify a subset of\\nthe samples included in the table, however the\\nsampleName has to be the same as used in table) (you\\ncan specify a label in the third column that is used\\n(if present) when the clustering mode is executed)"
    base_condition: "specify base condition (direction of change between\\nthe two conditions)"
    min_supp: "min support per splice site (at least -d samples have\\nto show this min support)(default:10)"
    min_samples: "min amount of samples showing in at least one of the\\njunctions the min supp (default:3)"
    significance_threshold: "significance level alpha (default 0.01)"
    fold_change_threshold: "abundance change threshold (default 1.0)"
    cluster: "provide -e if clustering should be performed"
    den_do_gram: "prefix specifying the dendogram plot"
    random: "provide -r if random seed should be used (not\\ndeterministic mode)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}