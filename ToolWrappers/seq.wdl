version 1.0

task Seq {
  input {
    String? format
    String? separator
    Boolean? equal_width
  }
  command <<<
    seq \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{if (equal_width) then "--equal-width" else ""}
  >>>
  parameter_meta {
    format: "use printf style floating-point FORMAT"
    separator: "use STRING to separate numbers (default: \\n)"
    equal_width: "equalize width by padding with leading zeroes"
  }
  output {
    File out_stdout = stdout()
  }
}