version 1.0

task Stark {
  input {
    Boolean? _inputfile_use
    File? _outputfile_use
    Boolean? _loglevel_use
    Boolean? _mergetypetype_use
    Boolean? _unifybeforerun_unify
    Boolean? _statisticstype_print
  }
  command <<<
    stark \
      ~{if (_inputfile_use) then "-i" else ""} \
      ~{if (_outputfile_use) then "-o" else ""} \
      ~{if (_loglevel_use) then "-l" else ""} \
      ~{if (_mergetypetype_use) then "-m" else ""} \
      ~{if (_unifybeforerun_unify) then "-u" else ""} \
      ~{if (_statisticstype_print) then "-s" else ""}
  >>>
  parameter_meta {
    _inputfile_use: ",      --input=FILE           use FILE for input"
    _outputfile_use: ",      --output=FILE          use FILE for output"
    _loglevel_use: ",      --log=LEVEL            use LEVEL for log level (0=OFF, 1000=ALL)"
    _mergetypetype_use: ",      --merge-type=TYPE      use TYPE for merging (0=no merge, 1=only node reducing merges, 2=all merges)"
    _unifybeforerun_unify: ",      --unify-before-run     unify input file unitigs before use"
    _statisticstype_print: ",      --statistics=TYPE      print statistics (0=no statistics, 1=trivial statistics, 2=cpu-consuming statistics)"
  }
  output {
    File out_stdout = stdout()
    File out__outputfile_use = "${in__outputfile_use}"
  }
}