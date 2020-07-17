version 1.0

task Mutscan {
  input {
    Boolean? simplified
    Boolean? verbose
    String? read_one
  }
  command <<<
    mutscan \
      ~{true="--simplified" false="" simplified} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""}
  >>>
  parameter_meta {
    simplified: "simplified mode uses less RAM but reports less information. This option can be auto/on/off, by default it's auto, which means automatically enabled when processing large FASTQ with large VCF. (string [=auto])"
    verbose: "enable verbose mode, more information will be output in STDERR"
    read_one: ""
  }
}