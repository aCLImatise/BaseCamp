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
      ~{true="-1" false="" use_tabular_output} \
      ~{true="--dna" false="" dna} \
      ~{true="--rna" false="" rna} \
      ~{true="--amino" false="" amino} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    use_tabular_output: ": use tabular output, one line per alignment"
    dna: ": use DNA alphabet (don't autodetect)"
    rna: ": use RNA alphabet (don't autodetect)"
    amino: ": use protein alphabet (don't autodetect)"
    options: ""
  }
}