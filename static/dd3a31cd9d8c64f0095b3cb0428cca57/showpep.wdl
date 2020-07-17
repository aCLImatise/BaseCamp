version 1.0

task Showpep {
  input {
    Boolean? format
  }
  command <<<
    showpep \
      ~{true="-format" false="" format}
  >>>
  parameter_meta {
    format: "menu       [2] Display format (Values: 0 (Enter your own list of things to display); 1 (Sequence only); 2 (Default sequence with features); 3 (Pretty sequence 4:Baroque))"
  }
}