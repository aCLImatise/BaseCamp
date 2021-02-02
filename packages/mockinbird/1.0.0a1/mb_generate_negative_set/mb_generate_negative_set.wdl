version 1.0

task Mbgeneratenegativeset {
  input {
    Int? number
    Int? width
    Boolean? verbose
  }
  command <<<
    mb_generate_negative_set \
      ~{if defined(number) then ("--number " +  '"' + number + '"') else ""} \
      ~{if defined(width) then ("--width " +  '"' + width + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    number: "set number or random drawings"
    width: "set number or nt +/- selected position"
    verbose: "verbose output"
  }
  output {
    File out_stdout = stdout()
  }
}