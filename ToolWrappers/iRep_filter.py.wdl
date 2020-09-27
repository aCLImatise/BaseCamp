version 1.0

task IRepFilterpy {
  input {
    Boolean? _irep_tables
    Int? min_coverage_default
    Int? min_percent_windows
    Int? min_r_value
    Int? max_fragmentsmbp_default
    Int? max_gc_bias
    Boolean? long
    String? var_7
  }
  command <<<
    iRep_filter_py \
      ~{var_7} \
      ~{if (_irep_tables) then "-t" else ""} \
      ~{if defined(min_coverage_default) then ("-c " +  '"' + min_coverage_default + '"') else ""} \
      ~{if defined(min_percent_windows) then ("-w " +  '"' + min_percent_windows + '"') else ""} \
      ~{if defined(min_r_value) then ("-r " +  '"' + min_r_value + '"') else ""} \
      ~{if defined(max_fragmentsmbp_default) then ("-f " +  '"' + max_fragmentsmbp_default + '"') else ""} \
      ~{if defined(max_gc_bias) then ("-g " +  '"' + max_gc_bias + '"') else ""} \
      ~{if (long) then "--long" else ""}
  >>>
  parameter_meta {
    _irep_tables: "[T [T ...]]  iRep table(s)"
    min_coverage_default: "min. coverage (default = 5)"
    min_percent_windows: "min. percent windows passing filter (default = 98)"
    min_r_value: "min. r^2 value for fitting (default = 0.90)"
    max_fragmentsmbp_default: "max. fragments/Mbp (default = 175)"
    max_gc_bias: "max. GC bias (default = no filter)"
    long: "print in long format"
    var_7: ""
  }
  output {
    File out_stdout = stdout()
  }
}