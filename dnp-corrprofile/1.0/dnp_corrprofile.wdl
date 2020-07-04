version 1.0

task DnpCorrprofile {
  input {
    Boolean? version_check
    Int? window
    Int? length
    Boolean? verbose
  }
  command <<<
    dnp-corrprofile \
      ~{if defined(version_check) then ("--version-check " +  '"' + version_check + '"') else ""} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    version_check: "Turn this option off to disable version update notifications of the application. One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1."
    window: "Sliding window size, < than length. In range [10..146]. Default: 10."
    length: "Dinucleotide profile sequence length. In range [25..600]. Default: 600."
    verbose: "Print parameters and variables."
  }
}