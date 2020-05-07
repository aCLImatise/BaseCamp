version 1.0

task FindGenesInIntrons.pl {
  input {
    Boolean inInGff
    Boolean jgJgGff
    Boolean outOutGff
  }
  command <<<
    findGenesInIntrons.pl \
      ~{true="--in_gff" false="" inInGff} \
      ~{true="--jg_gff" false="" jgJgGff} \
      ~{true="--out_gff" false="" outOutGff}
  >>>
}