version 1.0

task FalconcRaptordbsubsample {
  input {
    Boolean? help_syntax
    Boolean? _rdbfn_string
    Boolean? _genomesize_int
    Boolean? _coverage_float
    Boolean? random_seed
    Boolean? _blocksizemb_float
    String raptor_db_dot
    String megabytes_dot
  }
  command <<<
    falconc raptor_db_subsample \
      ~{raptor_db_dot} \
      ~{megabytes_dot} \
      ~{if (help_syntax) then "--help-syntax" else ""} \
      ~{if (_rdbfn_string) then "-r" else ""} \
      ~{if (_genomesize_int) then "-g" else ""} \
      ~{if (_coverage_float) then "-c" else ""} \
      ~{if (random_seed) then "--random-seed" else ""} \
      ~{if (_blocksizemb_float) then "-b" else ""}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _rdbfn_string: "=, --rdb_fn=         string  REQUIRED  Path to the RaptorDB file."
    _genomesize_int: "=, --genome_size=    int64   REQUIRED  Approximate genome size."
    _coverage_float: "=, --coverage=       float   REQUIRED  Coverage to select from the input"
    random_seed: "=         int64   REQUIRED  Seed for random generation."
    _blocksizemb_float: "=, --block-size-mb=  float   REQUIRED  Block size of the output DB, in"
    raptor_db_dot: "-u, --use-umc          bool    REQUIRED  Use Unique Molecular Coverage when"
    megabytes_dot: "-a=, --alarms-fn=      string  \\\"\\\"        Optional JSON file to write SMRT Link"
  }
  output {
    File out_stdout = stdout()
  }
}