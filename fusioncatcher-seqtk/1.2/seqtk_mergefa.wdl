version 1.0

task SeqtkMergefa {
  input {
    Int? quality_threshold
    Boolean? take_intersection
    Boolean? convert_lowercase_when
    Boolean? pick_random_allele
    String in_one_dot_fa
    String in_two_dot_fa
  }
  command <<<
    seqtk mergefa \
      ~{in_one_dot_fa} \
      ~{in_two_dot_fa} \
      ~{if defined(quality_threshold) then ("-q " +  '"' + quality_threshold + '"') else ""} \
      ~{true="-i" false="" take_intersection} \
      ~{true="-m" false="" convert_lowercase_when} \
      ~{true="-r" false="" pick_random_allele}
  >>>
  parameter_meta {
    quality_threshold: "quality threshold [0]"
    take_intersection: "take intersection"
    convert_lowercase_when: "convert to lowercase when one of the input base is N"
    pick_random_allele: "pick a random allele from het"
    in_one_dot_fa: ""
    in_two_dot_fa: ""
  }
}