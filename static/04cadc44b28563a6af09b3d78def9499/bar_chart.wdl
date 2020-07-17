version 1.0

task BarChart.py {
  input {
    Boolean? agg
    Boolean? agg_key_value
    Boolean? sort_keys
    Boolean? sort_values
    Boolean? reverse_sort
    Boolean? numeric_sort
    Boolean? percentage
    String cat
    String data
  }
  command <<<
    bar_chart.py \
      ~{cat} \
      ~{data} \
      ~{true="--agg" false="" agg} \
      ~{true="--agg-key-value" false="" agg_key_value} \
      ~{true="--sort-keys" false="" sort_keys} \
      ~{true="--sort-values" false="" sort_values} \
      ~{true="--reverse-sort" false="" reverse_sort} \
      ~{true="--numeric-sort" false="" numeric_sort} \
      ~{true="--percentage" false="" percentage}
  >>>
  parameter_meta {
    agg: "Two column input format, space seperated with value<space>key"
    agg_key_value: "Two column input format, space seperated with key<space>value"
    sort_keys: "sort by the key [default]"
    sort_values: "sort by the frequence"
    reverse_sort: "reverse the sort"
    numeric_sort: "sort keys by numeric sequencing"
    percentage: "List percentage for each bar"
    cat: ""
    data: ""
  }
}