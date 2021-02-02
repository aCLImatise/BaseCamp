version 1.0

task SNAPstatspl {
  input {
    String codons_dot
  }
  command <<<
    SNAPstats_pl \
      ~{codons_dot}
  >>>
  parameter_meta {
    codons_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}