version 1.0

task FindGenesInIntrons.pl {
  input {
    Boolean? in_gff
    Boolean? jg_gff
    Boolean? out_gff
  }
  command <<<
    findGenesInIntrons.pl \
      ~{true="--in_gff" false="" in_gff} \
      ~{true="--jg_gff" false="" jg_gff} \
      ~{true="--out_gff" false="" out_gff}
  >>>
  parameter_meta {
    in_gff: "[name] name of file with gtf format gene predictions"
    jg_gff: "[name] name of file with corresponding joingenes predictions"
    out_gff: "[name] output (gtf format)"
  }
}