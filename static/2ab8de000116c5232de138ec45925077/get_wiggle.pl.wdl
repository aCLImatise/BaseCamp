version 1.0

task GetWigglepl {
  input {
    Boolean? prefix
    Boolean? wiggle
    String options
  }
  command <<<
    get_wiggle_pl \
      ~{options} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (wiggle) then "--wiggle" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mitobim:1.9.1--0"
  }
  parameter_meta {
    prefix: "<string>        Prefix for MIRA assembly files (mandatory), expects to find prefix.unpadded.fasta and prefix.padded.fasta"
    wiggle: "<string>        Wiggle file (optional), if not specified script will expect to find a file *.wig in the same directory as assembly results"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}