version 1.0

task EaselAlistat {
  input {
    Boolean? use_tabular_output
    Boolean? dna
    Boolean? rna
    Boolean? amino
    Boolean? options
  }
  command <<<
    easel alistat \
      ~{if (use_tabular_output) then "-1" else ""} \
      ~{if (dna) then "--dna" else ""} \
      ~{if (rna) then "--rna" else ""} \
      ~{if (amino) then "--amino" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    use_tabular_output: ": use tabular output, one line per alignment"
    dna: ": use DNA alphabet (don't autodetect)"
    rna: ": use RNA alphabet (don't autodetect)"
    amino: ": use protein alphabet (don't autodetect)"
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}