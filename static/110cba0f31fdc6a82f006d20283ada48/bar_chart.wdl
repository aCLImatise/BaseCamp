version 1.0

task BarChart.py {
  input {
    Boolean aggAgg
    Boolean aggAggKeyValue
    Boolean sortSortKeys
    Boolean sortSortValues
    Boolean reverseReverseSort
    Boolean numericNumericSort
    Boolean percentagePercentage
  }
  command <<<
    bar_chart.py \
      ~{true="--agg" false="" aggAgg} \
      ~{true="--agg-key-value" false="" aggAggKeyValue} \
      ~{true="--sort-keys" false="" sortSortKeys} \
      ~{true="--sort-values" false="" sortSortValues} \
      ~{true="--reverse-sort" false="" reverseReverseSort} \
      ~{true="--numeric-sort" false="" numericNumericSort} \
      ~{true="--percentage" false="" percentagePercentage}
  >>>
}