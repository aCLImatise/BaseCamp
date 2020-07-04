version 1.0

task MrnaToGene {
  input {
    String unique_dot
  }
  command <<<
    mrnaToGene \
      ~{unique_dot}
  >>>
  parameter_meta {
    unique_dot: "It is not removed from the name in the genePred."
  }
}