version 1.0

task Pbdagcon {
  input {
    Boolean? _verboseturns_verbose
    Boolean? _alignalign_sequences
    Int? _trim_uinttrim
    Int? _minlength_uintminimum
    Int? _mincoverage_uintminimum
    Int? _threads_intnumber
  }
  command <<<
    pbdagcon \
      ~{if (_verboseturns_verbose) then "-v" else ""} \
      ~{if (_alignalign_sequences) then "-a" else ""} \
      ~{if defined(_trim_uinttrim) then ("-t " +  '"' + _trim_uinttrim + '"') else ""} \
      ~{if defined(_minlength_uintminimum) then ("-m " +  '"' + _minlength_uintminimum + '"') else ""} \
      ~{if defined(_mincoverage_uintminimum) then ("-c " +  '"' + _mincoverage_uintminimum + '"') else ""} \
      ~{if defined(_threads_intnumber) then ("-j " +  '"' + _threads_intnumber + '"') else ""}
  >>>
  parameter_meta {
    _verboseturns_verbose: ",  --verbose\\nTurns on verbose logging"
    _alignalign_sequences: ",  --align\\nAlign sequences before adding to consensus"
    _trim_uinttrim: ",  --trim <uint>\\nTrim alignments on either size"
    _minlength_uintminimum: ",  --min-length <uint>\\nMinimum length for correction"
    _mincoverage_uintminimum: ",  --min-coverage <uint>\\nMinimum coverage for correction"
    _threads_intnumber: ",  --threads <int>\\nNumber of consensus threads"
  }
  output {
    File out_stdout = stdout()
  }
}