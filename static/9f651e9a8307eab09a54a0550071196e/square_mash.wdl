version 1.0

task SquareMash {
  input {
    Boolean? classic
  }
  command <<<
    square_mash \
      ~{true="--classic" false="" classic}
  >>>
  parameter_meta {
    classic: "Output table in a format suitable for R_mds.pl"
  }
}