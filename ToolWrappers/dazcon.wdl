version 1.0

task Dazcon {
  input {
    Boolean? _verboseturns_verbose
    Boolean? _onlyproperoverlapsuse_only
    Boolean? _coveragesortsort_hits
    Int? _maxhit_uintmaximum
    File? _stringrequired_path
    File? _alignfile_stringrequired
    Int? _trim_uinttrim
    Int? _minlen_uintminimum
    Int? _mincoverage_uintminimum
    Int? _threads_intnumber
  }
  command <<<
    dazcon \
      ~{if (_verboseturns_verbose) then "-v" else ""} \
      ~{if (_onlyproperoverlapsuse_only) then "-o" else ""} \
      ~{if (_coveragesortsort_hits) then "-x" else ""} \
      ~{if defined(_maxhit_uintmaximum) then ("-m " +  '"' + _maxhit_uintmaximum + '"') else ""} \
      ~{if defined(_stringrequired_path) then ("-s " +  '"' + _stringrequired_path + '"') else ""} \
      ~{if defined(_alignfile_stringrequired) then ("-a " +  '"' + _alignfile_stringrequired + '"') else ""} \
      ~{if defined(_trim_uinttrim) then ("-t " +  '"' + _trim_uinttrim + '"') else ""} \
      ~{if defined(_minlen_uintminimum) then ("-l " +  '"' + _minlen_uintminimum + '"') else ""} \
      ~{if defined(_mincoverage_uintminimum) then ("-c " +  '"' + _mincoverage_uintminimum + '"') else ""} \
      ~{if defined(_threads_intnumber) then ("-j " +  '"' + _threads_intnumber + '"') else ""}
  >>>
  parameter_meta {
    _verboseturns_verbose: ",  --verbose\\nTurns on verbose logging"
    _onlyproperoverlapsuse_only: ",  --only-proper-overlaps\\nUse only 'proper overlaps', i.e., align to the ends"
    _coveragesortsort_hits: ",  --coverage-sort\\nSort hits by coverage"
    _maxhit_uintmaximum: ",  --max-hit <uint>\\nMaximum number of hits to pass to consensus"
    _stringrequired_path: ",  --seq-file <string>\\n(required)  Path to the sequences file"
    _alignfile_stringrequired: ",  --align-file <string>\\n(required)  Path to the alignments file"
    _trim_uinttrim: ",  --trim <uint>\\nTrim alignments on either size"
    _minlen_uintminimum: ",  --min-len <uint>\\nMinimum length for correction"
    _mincoverage_uintminimum: ",  --min-coverage <uint>\\nMinimum coverage for correction"
    _threads_intnumber: ",  --threads <int>\\nNumber of consensus threads"
  }
  output {
    File out_stdout = stdout()
  }
}