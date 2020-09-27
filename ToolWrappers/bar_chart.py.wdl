version 1.0

task BarChartpy {
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
    bar_chart_py \
      ~{cat} \
      ~{data} \
      ~{if (agg) then "--agg" else ""} \
      ~{if (agg_key_value) then "--agg-key-value" else ""} \
      ~{if (sort_keys) then "--sort-keys" else ""} \
      ~{if (sort_values) then "--sort-values" else ""} \
      ~{if (reverse_sort) then "--reverse-sort" else ""} \
      ~{if (numeric_sort) then "--numeric-sort" else ""} \
      ~{if (percentage) then "--percentage" else ""}
  >>>
  parameter_meta {
    agg: "Two column input format, space seperated with\\nvalue<space>key"
    agg_key_value: "Two column input format, space seperated with\\nkey<space>value"
    sort_keys: "sort by the key [default]"
    sort_values: "sort by the frequence"
    reverse_sort: "reverse the sort"
    numeric_sort: "sort keys by numeric sequencing"
    percentage: "List percentage for each bar"
    cat: ""
    data: ""
  }
  output {
    File out_stdout = stdout()
  }
}