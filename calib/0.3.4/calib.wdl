version 1.0

task Calib {
  input {
    Boolean? _inputforward_type
    Boolean? _inputreverse_string
    Boolean? _outputprefix_string
    Boolean? _silent_type
    Boolean? _nosort_type
    Boolean? _gzipinput_type
    Boolean? _barcodelength_type
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
      ~{true="-f" false="" _inputforward_type} \
      ~{true="-r" false="" _inputreverse_string} \
      ~{true="-o" false="" _outputprefix_string} \
      ~{true="-s" false="" _silent_type} \
      ~{true="-q" false="" _nosort_type} \
      ~{true="-g" false="" _gzipinput_type} \
      ~{true="-l" false="" _barcodelength_type} \
      ~{true="-l1" false="" lone} \
      ~{true="-l2" false="" l_two} \
      ~{true="-p" false="" _ignoredsequenceprefixlength_type} \
      ~{true="-m" false="" _minimizercount_type} \
      ~{true="-k" false="" _kmersize_type} \
      ~{true="-e" false="" _errortolerance_type} \
      ~{true="-t" false="" _minimizerthreshold_type} \
      ~{true="-c" false="" _threads_type} \
      ~{if defined(parameter) then ("--PARAMETER " +  '"' + parameter + '"') else ""}
  >>>
  parameter_meta {
    _inputforward_type: "--input-forward                   (type: string;   REQUIRED paramter)"
    _inputreverse_string: "--input-reverse                   (type: string;   REQUIRED paramter)"
    _outputprefix_string: "--output-prefix                   (type: string;   REQUIRED paramter)"
    _silent_type: "--silent                          (type: no value; default: unset)"
    _nosort_type: "--no-sort                         (type: no value; default:  unset)"
    _gzipinput_type: "--gzip-input                      (type: no value; default:  unset)"
    _barcodelength_type: "--barcode-length                  (type: int;      REQUIRED paramter unless -l1 and -l2 are provided)"
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
}