version 1.0

task RsatSequencelengths {
  input {
    Boolean? help
    Boolean? verbose
    File? specified_standard_input
    String? unit
    Boolean? in_format
    File? specified_standard_output
    Boolean? sum
    String sequence_lengths
    String sequences
  }
  command <<<
    rsat sequence_lengths \
      ~{sequence_lengths} \
      ~{sequences} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if defined(specified_standard_input) then ("-i " +  '"' + specified_standard_input + '"') else ""} \
      ~{if defined(unit) then ("-unit " +  '"' + unit + '"') else ""} \
      ~{if (in_format) then "-in_format" else ""} \
      ~{if defined(specified_standard_output) then ("-o " +  '"' + specified_standard_output + '"') else ""} \
      ~{if (sum) then "-sum" else ""}
  >>>
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    specified_standard_input: "if not specified, the standard input is used.\\nThis allows to place the command within a pipe."
    unit: "|kb|mb|gb\\nUnits for sequence lengths.\\nSupported units:\\nbp        base pairs\\nkb        kilobases\\nmb        megabases\\ngb        gigabases"
    in_format: "input format\\nThe input file can contain either sequences or genomic\\ncoordinates (-in_format bed).\\nFor a list of supported input sequences, type\\nconvert-seq -help"
    specified_standard_output: "If not specified, the standard output is used.\\nThis allows to place the command within a pipe."
    sum: "only return sum of sequene lengths"
    sequence_lengths: "1999 by Jacques van Helden (Jacques.van-Helden@univ-amu.fr)"
    sequences: "USAGE"
  }
  output {
    File out_stdout = stdout()
    File out_specified_standard_output = "${in_specified_standard_output}"
  }
}