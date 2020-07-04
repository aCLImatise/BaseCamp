version 1.0

task Gepardcmd {
  input {
    Boolean? seq_one
    Boolean? seq_two
    Boolean? matrix
    Boolean? outfile
    Boolean? format
    Boolean? lower
    Boolean? upper
    Boolean? greyscale
    Boolean? silent
  }
  command <<<
    gepardcmd \
      ~{true="-seq1" false="" seq_one} \
      ~{true="-seq2" false="" seq_two} \
      ~{true="-matrix" false="" matrix} \
      ~{true="-outfile" false="" outfile} \
      ~{true="-format" false="" format} \
      ~{true="-lower" false="" lower} \
      ~{true="-upper" false="" upper} \
      ~{true="-greyscale" false="" greyscale} \
      ~{true="-silent" false="" silent}
  >>>
  parameter_meta {
    seq_one: ":        first sequence file"
    seq_two: ":        second sequence file"
    matrix: ":      substitution matrix file"
    outfile: ":     output file name"
    format: ":      output format, one of:  'png', 'jpg', 'bmp' (default:PNG)"
    lower: "lower limit for dot intensity (in %)"
    upper: "upper limit for dot intensity (in %)"
    greyscale: "greyscale start value (in %)"
    silent: "generate no output (except error messages)"
  }
}