version 1.0

task Dnpcorrprofile {
  input {
    Boolean? version_check
    Int? window
    Int? length
    Boolean? verbose
    String window_dot
  }
  command <<<
    dnp_corrprofile \
      ~{window_dot} \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the\\napplication. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\\nDefault: 1."
    window: "Sliding window size, < than length. In range [10..146]. Default: 10."
    length: "Dinucleotide profile sequence length. In range [25..600]. Default:\\n600."
    verbose: "Print parameters and variables."
    window_dot: "REQUIRED ARGUMENTS"
  }
  output {
    File out_stdout = stdout()
  }
}