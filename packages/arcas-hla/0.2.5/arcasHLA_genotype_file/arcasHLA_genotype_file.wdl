version 1.0

task ArcasHLAGenotypeFile {
  input {
    String ar_cash_la
    String genotype
    String fast_qs
    String or
    String alignment_dot_p
    File var_file
  }
  command <<<
    arcasHLA genotype file \
      ~{ar_cash_la} \
      ~{genotype} \
      ~{fast_qs} \
      ~{or} \
      ~{alignment_dot_p} \
      ~{var_file}
  >>>
  runtime {
    docker: "quay.io/biocontainers/arcas-hla:0.2.5--hdfd78af_0"
  }
  parameter_meta {
    ar_cash_la: ""
    genotype: ""
    fast_qs: ""
    or: ""
    alignment_dot_p: ""
    var_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}