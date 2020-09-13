version 1.0

task FalconcRaptordbcalclengthcutoff {
  input {
    Boolean? help_syntax
    Boolean? _rdbfn_string
    Boolean? _genomesize_int
    Boolean? _coverage_float
    Boolean? fail_low_cov
    Boolean? _alarmsfn_string
  }
  command <<<
    falconc raptor_db_calc_length_cutoff \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_rdbfn_string) then "-r" else ""} \
      ~{if (_genomesize_int) then "-g" else ""} \
      ~{if (_coverage_float) then "-c" else ""} \
      ~{if (fail_low_cov) then "--fail-low-cov" else ""} \
      ~{if (_alarmsfn_string) then "-a" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _rdbfn_string: "=, --rdb-fn=       string  \\\"rawreads.db\\\"  set rdb_fn"
    _genomesize_int: "=, --genome-size=  int64   4600000        set genome_size"
    _coverage_float: "=, --coverage=     float   30.0           set coverage"
    fail_low_cov: "bool    false          Exit non-zero if the input\\ncoverage was insufficient to\\nsatisfy the requirement."
    _alarmsfn_string: "=, --alarms-fn=    string  \\\"\\\"             Optional JSON file to write SMRT\\nLink alarms. (typically used w/\\n-f)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}