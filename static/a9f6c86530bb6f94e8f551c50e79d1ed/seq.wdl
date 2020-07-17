version 1.0

task Seq {
  input {
    String? format
    String? separator
    Boolean? equal_width
    String? option
  }
  command <<<
    seq \
      ~{option} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(separator) then ("--separator " +  '"' + separator + '"') else ""} \
      ~{true="--equal-width" false="" equal_width}
  >>>
  parameter_meta {
    format: "use printf style floating-point FORMAT"
    separator: "use STRING to separate numbers (default: \n)"
    equal_width: "equalize width by padding with leading zeroes"
    option: ""
  }
}