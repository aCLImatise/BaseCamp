version 1.0

task Calib {
  input {
    Boolean? _inputforward_type
    Boolean? _inputreverse_type
    Boolean? _outputprefix_string
    Boolean? _silent_type
    Boolean? _nosort_type
    Boolean? _gzipinput_type
    Boolean? _barcodelength_int
    Boolean? lone
    Boolean? l_two
    Boolean? _ignoredsequenceprefixlength_type
    Boolean? _minimizercount_type
    Boolean? _kmersize_type
    Boolean? _errortolerance_type
    Boolean? _minimizerthreshold_type
    Boolean? _threads_type
    String? parameter
  }
  command <<<
    calib \
      ~{if (_inputforward_type) then "-f" else ""} \
      ~{if (_inputreverse_type) then "-r" else ""} \
      ~{if (_outputprefix_string) then "-o" else ""} \
      ~{if (_silent_type) then "-s" else ""} \
      ~{if (_nosort_type) then "-q" else ""} \
      ~{if (_gzipinput_type) then "-g" else ""} \
      ~{if (_barcodelength_int) then "-l" else ""} \
      ~{if (lone) then "-l1" else ""} \
      ~{if (l_two) then "-l2" else ""} \
      ~{if (_ignoredsequenceprefixlength_type) then "-p" else ""} \
      ~{if (_minimizercount_type) then "-m" else ""} \
      ~{if (_kmersize_type) then "-k" else ""} \
      ~{if (_errortolerance_type) then "-e" else ""} \
      ~{if (_minimizerthreshold_type) then "-t" else ""} \
      ~{if (_threads_type) then "-c" else ""} \
      ~{if defined(parameter) then ("--PARAMETER " +  '"' + parameter + '"') else ""}
  >>>
  parameter_meta {
    _inputforward_type: "--input-forward                   (type: string;   REQUIRED paramter)"
    _inputreverse_type: "--input-reverse                   (type: string;   REQUIRED paramter)"
    _outputprefix_string: "--output-prefix                   (type: string;   REQUIRED paramter)"
    _silent_type: "--silent                          (type: no value; default: unset)"
    _nosort_type: "--no-sort                         (type: no value; default:  unset)"
    _gzipinput_type: "--gzip-input                      (type: no value; default:  unset)"
    _barcodelength_int: "--barcode-length                  (type: int;      REQUIRED paramter unless -l1 and -l2 are provided)"
    lone: "--barcode-length-1                (type: int;      REQUIRED paramter unless -l is provided)"
    l_two: "--barcode-length-2                (type: int;      REQUIRED paramter unless -l is provided)"
    _ignoredsequenceprefixlength_type: "--ignored-sequence-prefix-length  (type: int;      default: 0)"
    _minimizercount_type: "--minimizer-count                 (type: int;      default: Depends on observed read length;)"
    _kmersize_type: "--kmer-size                       (type: int;      default: Depends on observed read length;)"
    _errortolerance_type: "--error-tolerance                 (type: int;      default: Depends on observed read length;)"
    _minimizerthreshold_type: "--minimizer-threshold             (type: int;      default: Depends on observed read length;)"
    _threads_type: "--threads                         (type: int;      default: 1)"
    parameter: ""
  }
  output {
    File out_stdout = stdout()
  }
}