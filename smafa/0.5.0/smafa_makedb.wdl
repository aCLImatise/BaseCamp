version 1.0

task SmafaMakedb {
  input {
    Boolean? amino_acid
    Boolean? quiet
    Boolean? translate
    Boolean? verbose
    String? flags
    String db_fast_a
  }
  command <<<
    smafa makedb \
      ~{flags} \
      ~{db_fast_a} \
      ~{if (amino_acid) then "--amino-acid" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (translate) then "--translate" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    amino_acid: "Sequences are amino acid [default: nucleotide]"
    quiet: "Unless there is an error, do not print logging information"
    translate: "Translate input before generating DB"
    verbose: "Print extra debug logging information"
    flags: ""
    db_fast_a: ""
  }
  output {
    File out_stdout = stdout()
  }
}