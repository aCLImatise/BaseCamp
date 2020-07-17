version 1.0

task Stark {
  input {
    Boolean? _use_file
    Boolean? _outputfile_use
    Boolean? _loglevel_use
    Boolean? _mergetypetype_use
    Boolean? _unifybeforerun_unify
    Boolean? _statisticstype_print
  }
  command <<<
    stark \
      ~{true="-i" false="" _use_file} \
      ~{true="-o" false="" _outputfile_use} \
      ~{true="-l" false="" _loglevel_use} \
      ~{true="-m" false="" _mergetypetype_use} \
      ~{true="-u" false="" _unifybeforerun_unify} \
      ~{true="-s" false="" _statisticstype_print}
  >>>
  parameter_meta {
    _use_file: ",      --input=FILE           use FILE for input"
    _outputfile_use: ",      --output=FILE          use FILE for output"
    _loglevel_use: ",      --log=LEVEL            use LEVEL for log level (0=OFF, 1000=ALL)"
    _mergetypetype_use: ",      --merge-type=TYPE      use TYPE for merging (0=no merge, 1=only node reducing merges, 2=all merges)"
    _unifybeforerun_unify: ",      --unify-before-run     unify input file unitigs before use"
    _statisticstype_print: ",      --statistics=TYPE      print statistics (0=no statistics, 1=trivial statistics, 2=cpu-consuming statistics)"
  }
}