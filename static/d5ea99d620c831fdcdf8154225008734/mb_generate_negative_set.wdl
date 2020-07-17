version 1.0

task MbGenerateNegativeSet {
  input {
    String? number
    String? width
    Boolean? verbose
  }
  command <<<
    mb-generate-negative-set \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    number: "set number or random drawings"
    width: "set number or nt +/- selected position"
    verbose: "verbose output"
  }
}